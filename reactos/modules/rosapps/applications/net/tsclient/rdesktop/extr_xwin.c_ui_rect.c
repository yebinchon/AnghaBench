
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int FILL_RECTANGLE (int,int,int,int) ;
 int SET_FOREGROUND (int) ;

void
ui_rect(RDPCLIENT * This,
                   int x, int y, int cx, int cy,
                    int colour)
{
 SET_FOREGROUND(colour);
 FILL_RECTANGLE(x, y, cx, cy);
}
