
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int szDescription; int llSequenceNumber; int dwRestorePtType; int dwEventType; } ;
struct TYPE_6__ {int llSequenceNumber; } ;
typedef TYPE_1__ STATEMGRSTATUS ;
typedef TYPE_2__ RESTOREPOINTINFOA ;
typedef int DWORD ;
typedef int BOOL ;


 int APPLICATION_INSTALL ;
 int lstrcpyA (int ,char*) ;
 int pSRSetRestorePointA (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static BOOL notify_system_change(DWORD event_type, STATEMGRSTATUS *status)
{
    RESTOREPOINTINFOA spec;

    spec.dwEventType = event_type;
    spec.dwRestorePtType = APPLICATION_INSTALL;
    spec.llSequenceNumber = status->llSequenceNumber;
    lstrcpyA(spec.szDescription, "msitest restore point");

    return pSRSetRestorePointA(&spec, status);
}
