class Ball{
    int x;
    int y;
    int size;
    boolean target;
    Ball(int x , int y ,int size){
        this.x = x;
        this.y = y;
        this.size = size;

        if(Math.random()<0.5 ){
            target = true;
        }else{
            target = false;
        }
    }
void show(){
    if(target == true){
        fill(255 , 0 , 0);
    }else{
        fill(255);
    }
    
    circle(x , y , size);
}

boolean hit(){
    double d= dist(x , y , mouseX , mouseY);
    if(d<size/2){
        return true;
    }else{
        return false;
    }
}

void reset(){
    int ry = (int)(Math.random() * 300) - 150;
    y= 350 + ry;

    size = (int)(Math.random()*50)+20;

    if (Math.random()<0.5){
        target = true;
    }else{
        target = false;
    }
}
}