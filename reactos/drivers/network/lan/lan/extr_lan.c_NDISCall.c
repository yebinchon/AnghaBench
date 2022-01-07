
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_9__ {void* InformationBufferLength; void* InformationBuffer; void* Oid; } ;
struct TYPE_8__ {void* InformationBufferLength; void* InformationBuffer; void* Oid; } ;
struct TYPE_10__ {TYPE_2__ QUERY_INFORMATION; TYPE_1__ SET_INFORMATION; } ;
struct TYPE_12__ {TYPE_3__ DATA; scalar_t__ RequestType; } ;
struct TYPE_11__ {scalar_t__ State; scalar_t__ NdisStatus; int Event; int NdisHandle; } ;
typedef void* PVOID ;
typedef TYPE_4__* PLAN_ADAPTER ;
typedef scalar_t__ NDIS_STATUS ;
typedef scalar_t__ NDIS_REQUEST_TYPE ;
typedef TYPE_5__ NDIS_REQUEST ;
typedef void* NDIS_OID ;


 int FALSE ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 scalar_t__ LAN_STATE_RESETTING ;
 scalar_t__ NDIS_STATUS_NOT_ACCEPTED ;
 scalar_t__ NDIS_STATUS_PENDING ;
 int NdisRequest (scalar_t__*,int ,TYPE_5__*) ;
 scalar_t__ NdisRequestSetInformation ;
 int UserRequest ;

NDIS_STATUS
NDISCall(
    PLAN_ADAPTER Adapter,
    NDIS_REQUEST_TYPE Type,
    NDIS_OID OID,
    PVOID Buffer,
    UINT Length)
{
    NDIS_REQUEST Request;
    NDIS_STATUS NdisStatus;

    Request.RequestType = Type;
    if (Type == NdisRequestSetInformation)
    {
        Request.DATA.SET_INFORMATION.Oid = OID;
        Request.DATA.SET_INFORMATION.InformationBuffer = Buffer;
        Request.DATA.SET_INFORMATION.InformationBufferLength = Length;
    }
    else
    {
        Request.DATA.QUERY_INFORMATION.Oid = OID;
        Request.DATA.QUERY_INFORMATION.InformationBuffer = Buffer;
        Request.DATA.QUERY_INFORMATION.InformationBufferLength = Length;
    }

    if (Adapter->State != LAN_STATE_RESETTING)
    {
        NdisRequest(&NdisStatus, Adapter->NdisHandle, &Request);
    }
    else
    {
        NdisStatus = NDIS_STATUS_NOT_ACCEPTED;
    }


    if (NdisStatus == NDIS_STATUS_PENDING)
    {
        KeWaitForSingleObject(&Adapter->Event,
                              UserRequest,
                              KernelMode,
                              FALSE,
                              ((void*)0));
        NdisStatus = Adapter->NdisStatus;
    }

    return NdisStatus;
}
