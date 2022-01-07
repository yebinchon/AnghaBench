
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int Name; scalar_t__ PageCount; int Allocated; } ;
typedef TYPE_1__* PEMS_HANDLE ;


 int FALSE ;
 int RtlZeroMemory (int ,int) ;

__attribute__((used)) static VOID FreeHandle(PEMS_HANDLE HandleEntry)
{
    HandleEntry->Allocated = FALSE;
    HandleEntry->PageCount = 0;
    RtlZeroMemory(HandleEntry->Name, sizeof(HandleEntry->Name));

}
