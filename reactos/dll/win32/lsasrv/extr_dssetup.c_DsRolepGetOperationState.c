
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OperationState; } ;
typedef TYPE_1__* PDSROLE_OPERATION_STATE_INFO ;
typedef scalar_t__ PDSROLER_PRIMARY_DOMAIN_INFORMATION ;
typedef int NET_API_STATUS ;
typedef int DSROLE_OPERATION_STATE_INFO ;


 int DsRoleOperationIdle ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 TYPE_1__* midl_user_allocate (int) ;

__attribute__((used)) static
NET_API_STATUS
DsRolepGetOperationState(
    PDSROLER_PRIMARY_DOMAIN_INFORMATION *DomainInfo)
{
    PDSROLE_OPERATION_STATE_INFO Buffer;

    Buffer = midl_user_allocate(sizeof(DSROLE_OPERATION_STATE_INFO));
    if (Buffer == ((void*)0))
        return ERROR_OUTOFMEMORY;

    Buffer->OperationState = DsRoleOperationIdle;

    *DomainInfo = (PDSROLER_PRIMARY_DOMAIN_INFORMATION)Buffer;

    return ERROR_SUCCESS;
}
