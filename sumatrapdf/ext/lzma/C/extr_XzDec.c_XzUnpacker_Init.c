
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numStreams; scalar_t__ pos; int state; } ;
typedef TYPE_1__ CXzUnpacker ;


 int XZ_STATE_STREAM_HEADER ;

void XzUnpacker_Init(CXzUnpacker *p)
{
  p->state = XZ_STATE_STREAM_HEADER;
  p->pos = 0;
  p->numStreams = 0;
}
