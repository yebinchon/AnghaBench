
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int RDPCLIENT ;


 int FILL_RECTANGLE (int,int,int,int) ;
 int RESET_FUNCTION (int ) ;
 int SET_FUNCTION (int ) ;

void
ui_destblt(RDPCLIENT * This, uint8 opcode,
               int x, int y, int cx, int cy)
{
 SET_FUNCTION(opcode);
 FILL_RECTANGLE(x, y, cx, cy);
 RESET_FUNCTION(opcode);
}
