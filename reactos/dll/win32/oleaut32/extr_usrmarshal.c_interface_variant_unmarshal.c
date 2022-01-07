
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int DWORD ;


 int TRACE (char*,int ,unsigned char*,int **) ;
 unsigned char* WdtpInterfacePointer_UserUnmarshal (int *,unsigned char*,int **,int ) ;

__attribute__((used)) static unsigned char *interface_variant_unmarshal(ULONG *pFlags, unsigned char *Buffer,
                                                  REFIID riid, IUnknown **ppunk)
{
  DWORD ptr;

  TRACE("pFlags=%d, Buffer=%p, ppUnk=%p\n", *pFlags, Buffer, ppunk);


  ptr = *(DWORD*)Buffer;
  Buffer += sizeof(DWORD);

  if(!ptr)
      return Buffer;

  return WdtpInterfacePointer_UserUnmarshal(pFlags, Buffer, ppunk, riid);
}
