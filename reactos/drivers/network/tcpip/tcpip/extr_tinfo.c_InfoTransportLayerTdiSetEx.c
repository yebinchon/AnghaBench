
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int PVOID ;
typedef int PCHAR ;


 int TDI_INVALID_REQUEST ;

TDI_STATUS InfoTransportLayerTdiSetEx( UINT InfoClass,
           UINT InfoType,
           UINT InfoId,
           PVOID Context,
           TDIEntityID *id,
           PCHAR Buffer,
           UINT BufferSize ) {
    return TDI_INVALID_REQUEST;
}
