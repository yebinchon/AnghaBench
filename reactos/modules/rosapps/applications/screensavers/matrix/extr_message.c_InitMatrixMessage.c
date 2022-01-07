
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_6__ {int counter; scalar_t__ random_reg1; void* height; void* width; scalar_t__ msgindex; } ;
typedef TYPE_1__ MATRIX_MESSAGE ;
typedef int HWND ;


 int ClearMatrixMessage (TYPE_1__*) ;
 scalar_t__ GetTickCount () ;
 int MAXMSG_HEIGHT ;
 int MAXMSG_WIDTH ;
 int MSGSPEED_MIN ;
 int SetMatrixMessage (TYPE_1__*,int ,int ) ;
 int SetMessageFont (int ,int ,int ,int ) ;
 int crc_rand () ;
 int g_fFontBold ;
 int g_nFontSize ;
 int g_szFontName ;
 int * g_szMessages ;
 TYPE_1__* malloc (int) ;
 void* min (int,int ) ;

MATRIX_MESSAGE *InitMatrixMessage(HWND hwnd, int width, int height)
{
 MATRIX_MESSAGE *msg;

 if((msg = malloc(sizeof(MATRIX_MESSAGE))) == 0)
  return 0;

 ClearMatrixMessage(msg);

 msg->msgindex = 0;
 msg->width = min(width, MAXMSG_WIDTH);
 msg->height = min(height, MAXMSG_HEIGHT);
 msg->counter = -(int)(crc_rand() % MSGSPEED_MIN + MSGSPEED_MIN);

 msg->random_reg1 = (WORD)GetTickCount();

 SetMessageFont(hwnd, g_szFontName, g_nFontSize, g_fFontBold);

 SetMatrixMessage(msg, 0, g_szMessages[0]);

 return msg;
}
