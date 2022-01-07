
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ UINT ;
typedef int Temp ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int PVOID ;
typedef int PUINT ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;


 int CL_TL_UDP ;
 scalar_t__ ENTITY_TYPE_ID ;
 scalar_t__ INFO_CLASS_GENERIC ;
 scalar_t__ INFO_TYPE_PROVIDER ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int TDI_INVALID_REQUEST ;

TDI_STATUS InfoTransportLayerTdiQueryEx( UINT InfoClass,
      UINT InfoType,
      UINT InfoId,
      PVOID Context,
      TDIEntityID *id,
      PNDIS_BUFFER Buffer,
      PUINT BufferSize ) {
    if( InfoClass == INFO_CLASS_GENERIC &&
 InfoType == INFO_TYPE_PROVIDER &&
 InfoId == ENTITY_TYPE_ID ) {
 ULONG Temp = CL_TL_UDP;
 return InfoCopyOut( (PCHAR)&Temp, sizeof(Temp), Buffer, BufferSize );
    }

    return TDI_INVALID_REQUEST;
}
