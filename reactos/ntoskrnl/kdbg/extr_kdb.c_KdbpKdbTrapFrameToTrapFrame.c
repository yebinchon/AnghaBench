
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int HardwareEsp; int HardwareSegSs; } ;
struct TYPE_4__ {TYPE_2__ Tf; } ;
typedef int PKTRAP_FRAME ;
typedef TYPE_1__* PKDB_KTRAP_FRAME ;


 int FIELD_OFFSET (int ,int ) ;
 int HardwareEsp ;
 int KTRAP_FRAME ;
 int KiEspToTrapFrame (int ,int ) ;
 int KiSsToTrapFrame (int ,int ) ;
 int RtlCopyMemory (int ,TYPE_2__*,int ) ;

__attribute__((used)) static VOID
KdbpKdbTrapFrameToTrapFrame(
    PKDB_KTRAP_FRAME KdbTrapFrame,
    PKTRAP_FRAME TrapFrame)
{

    RtlCopyMemory(TrapFrame, &KdbTrapFrame->Tf, FIELD_OFFSET(KTRAP_FRAME, HardwareEsp));



    KiSsToTrapFrame(TrapFrame, KdbTrapFrame->Tf.HardwareSegSs);
    KiEspToTrapFrame(TrapFrame, KdbTrapFrame->Tf.HardwareEsp);


}
