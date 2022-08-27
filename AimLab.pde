  Ball[] bs = new Ball[10];
int score  = 0;
void setup() {
    size(1000 , 700);
    
    int x = 10;
    
    for (int i = 0; i < bs.length; ++i) {
        int y = (int)(Math.random() * 700);
        int size = (int)(Math.random() * 50)+20;
        bs[i] = new Ball(x , y , size);
        x = x + 100 ;
        
    }
    
}

void draw() {
    background(157, 3, 252);
    boolean hitTarget = false;
    for (int i = 0; i < bs.length; ++i) {
        bs[i].show();
        if(mousePressed){
        if (bs[i].hit() == true && bs[i].target) {
            bs[i].target= false;
            score+=(70-bs[i].size)/10;
        }
    }
    }

      if(frameCount%150==0){
        for (int i = 0; i < bs.length; ++i) {
            bs[i].reset();
        }
      }  
    fill(255,255,0);
    textSize(48);
    text(score , 100 ,650);
   
    }
        
