
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Context; } ;
typedef int * PULONG ;
typedef int PLAN_ADAPTER ;
typedef TYPE_1__* PIP_INTERFACE ;
typedef int NTSTATUS ;
typedef int NDIS_OID ;


 int NDISCall (int ,int ,int,int *,int) ;
 int NdisHardwareStatusReady ;
 int NdisMediaStateConnected ;
 int NdisRequestQueryInformation ;


 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

NTSTATUS TcpipLanGetDwordOid
( PIP_INTERFACE Interface,
  NDIS_OID Oid,
  PULONG Result ) {

    if( Interface->Context ) {
        return NDISCall((PLAN_ADAPTER)Interface->Context,
                        NdisRequestQueryInformation,
                        Oid,
                        Result,
                        sizeof(ULONG));
    } else switch( Oid ) {
    case 129:
        *Result = NdisHardwareStatusReady;
        return STATUS_SUCCESS;
    case 128:
        *Result = NdisMediaStateConnected;
        return STATUS_SUCCESS;
    default:
        return STATUS_INVALID_PARAMETER;
    }
}
