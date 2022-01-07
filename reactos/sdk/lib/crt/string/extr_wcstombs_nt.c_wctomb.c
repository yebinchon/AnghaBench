
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;
typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;
 int RtlUnicodeToMultiByteN (char*,int,scalar_t__*,int *,int) ;

int wctomb (char *mbchar, wchar_t wchar)
{
 NTSTATUS Status;
 ULONG Size;

 if (mbchar == ((void*)0))
  return 0;

 Status = RtlUnicodeToMultiByteN (mbchar,
                                  1,
                                  &Size,
                                  &wchar,
                                  sizeof(WCHAR));
 if (!NT_SUCCESS(Status))
  return -1;

 return (int)Size;
}
