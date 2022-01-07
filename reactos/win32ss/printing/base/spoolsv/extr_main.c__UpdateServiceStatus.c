
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dwCurrentState; void* dwCheckPoint; } ;
typedef void* DWORD ;


 TYPE_1__ ServiceStatus ;
 int SetServiceStatus (int ,TYPE_1__*) ;
 int hServiceStatus ;

__attribute__((used)) static void
_UpdateServiceStatus(DWORD dwNewStatus, DWORD dwCheckPoint)
{
    ServiceStatus.dwCheckPoint = dwCheckPoint;
    ServiceStatus.dwCurrentState = dwNewStatus;
    SetServiceStatus(hServiceStatus, &ServiceStatus);
}
