
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TDI_STATUS ;
typedef scalar_t__* PUINT ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ PCHAR ;


 int CopyBufferToBufferChain (int ,int ,scalar_t__,scalar_t__) ;
 int TDI_SUCCESS ;

TDI_STATUS InfoCopyOut( PCHAR DataOut, UINT SizeOut,
   PNDIS_BUFFER ClientBuf, PUINT ClientBufSize ) {
    UINT RememberedCBSize = *ClientBufSize;
    *ClientBufSize = SizeOut;



    if( RememberedCBSize < SizeOut || !ClientBuf )
 return TDI_SUCCESS;
    else {
 CopyBufferToBufferChain( ClientBuf, 0, (PCHAR)DataOut, SizeOut );
 return TDI_SUCCESS;
    }
}
