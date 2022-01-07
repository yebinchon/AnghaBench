
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TDI_STATUS ;
typedef int TDIObjectID ;
typedef int PVOID ;
typedef int PUINT ;
typedef int PADDRESS_FILE ;


 int TDI_INVALID_REQUEST ;
 int UNIMPLEMENTED ;

TDI_STATUS GetAddressFileInfo(TDIObjectID *ID,
                              PADDRESS_FILE AddrFile,
                              PVOID Buffer,
                              PUINT BufferSize)
{
    UNIMPLEMENTED;

    return TDI_INVALID_REQUEST;
}
