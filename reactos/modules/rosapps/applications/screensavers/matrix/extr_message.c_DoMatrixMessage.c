
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* message; } ;
struct TYPE_9__ {int counter; int msgindex; } ;
typedef TYPE_1__ MATRIX_MESSAGE ;
typedef TYPE_2__ MATRIX ;
typedef int HDC ;


 int ClearMatrixMessage (TYPE_1__*) ;
 int DrawMatrixMessage (TYPE_2__*,TYPE_1__*,int ) ;
 int MSGSPEED_MAX ;
 int MSGSPEED_MIN ;
 int MessageSpeed () ;
 int RevealMatrixMessage (TYPE_1__*,int) ;
 int SetMatrixMessage (TYPE_1__*,int ,int ) ;
 int crc_rand () ;
 scalar_t__ g_fRandomizeMessages ;
 int g_nMessageSpeed ;
 int g_nNumMessages ;
 int * g_szMessages ;

void DoMatrixMessage(HDC hdc, MATRIX *matrix)
{
 MATRIX_MESSAGE *msg = matrix->message;

 int RealSpeed = MessageSpeed();

 if(g_nNumMessages > 0)
 {

  if(msg->counter++ < 0)
   return;


  if(msg->counter++ == RealSpeed / 2 + (RealSpeed/4))
   ClearMatrixMessage(msg);


  if(msg->counter >= RealSpeed)
  {



   if(g_fRandomizeMessages)
    msg->msgindex = crc_rand() % g_nNumMessages;
   else
    msg->msgindex = (msg->msgindex + 1) % g_nNumMessages;


   SetMatrixMessage(msg, 0, g_szMessages[msg->msgindex]);

   msg->counter = -(int)(crc_rand() % MSGSPEED_MAX);
  }

  else if(msg->counter < RealSpeed / 2)
  {
   int w = (g_nMessageSpeed - MSGSPEED_MIN);
   w = (1 << 16) + ((w<<16) / MSGSPEED_MAX);
   w = (w * 3 * g_nMessageSpeed) >> 16;

   RevealMatrixMessage(msg, w + 100);
  }




  DrawMatrixMessage(matrix, msg, hdc);
 }
}
