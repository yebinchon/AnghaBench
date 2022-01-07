
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int REFIID ;
typedef int IUnknown ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;


 int LOWORD (int ) ;
 int TRACE (char*,int ,unsigned char*,int *) ;
 unsigned char* WdtpInterfacePointer_UserMarshal (int *,int ,unsigned char*,int *,int ) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static unsigned char* interface_variant_marshal(ULONG *pFlags, unsigned char *Buffer,
                                                REFIID riid, IUnknown *punk)
{
  TRACE("pFlags=%d, Buffer=%p, pUnk=%p\n", *pFlags, Buffer, punk);


  if(!punk)
  {
      memset(Buffer, 0, sizeof(ULONG));
      return Buffer + sizeof(ULONG);
  }
  else
  {
      *(DWORD*)Buffer = (DWORD_PTR)punk;
      Buffer += sizeof(DWORD);
  }

  return WdtpInterfacePointer_UserMarshal(pFlags, LOWORD(*pFlags), Buffer, punk, riid);
}
