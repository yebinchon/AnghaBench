
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * SER_Handler; } ;
struct TYPE_9__ {TYPE_4__ SUF_Registration; TYPE_2__ volatile* SUF_TargetTryLevel; TYPE_3__* SUF_Frame; } ;
typedef TYPE_1__ _SEH2UnwindFrame_t ;
struct TYPE_10__ {struct TYPE_10__* ST_Next; } ;
typedef TYPE_2__ _SEH2TryLevel_t ;
struct TYPE_11__ {TYPE_2__* SF_TopTryLevel; } ;
typedef TYPE_3__ _SEH2Frame_t ;


 int _SEH2Finally (TYPE_3__*,TYPE_2__ volatile*) ;
 int __SEH2EnterFrame (TYPE_4__*) ;
 int __SEH2LeaveFrame () ;
 int __SEH2UnwindHandler ;

__attribute__((used)) static
void _SEH2LocalUnwind(_SEH2Frame_t * frame, volatile _SEH2TryLevel_t * dsttrylevel)
{
 volatile _SEH2TryLevel_t * trylevel;
 _SEH2UnwindFrame_t unwindframe;

 unwindframe.SUF_Frame = frame;
 unwindframe.SUF_TargetTryLevel = dsttrylevel;

 unwindframe.SUF_Registration.SER_Handler = &__SEH2UnwindHandler;
 __SEH2EnterFrame(&unwindframe.SUF_Registration);

 for(trylevel = frame->SF_TopTryLevel; trylevel && trylevel != dsttrylevel; trylevel = trylevel->ST_Next)
 {
  frame->SF_TopTryLevel = trylevel->ST_Next;
  _SEH2Finally(frame, trylevel);
 }

 __SEH2LeaveFrame();
}
