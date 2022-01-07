
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int PLARGE_INTEGER ;
typedef int NTSTATUS ;
typedef int KWAIT_REASON ;
typedef int KPROCESSOR_MODE ;
typedef int BOOLEAN ;


 int KeWaitForSingleObject (int ,int ,int ,int ,int ) ;

NTSTATUS TcpipWaitForSingleObject( PVOID Object,
       KWAIT_REASON Reason,
       KPROCESSOR_MODE WaitMode,
       BOOLEAN Alertable,
       PLARGE_INTEGER Timeout ) {
    return KeWaitForSingleObject
 ( Object, Reason, WaitMode, Alertable, Timeout );
}
