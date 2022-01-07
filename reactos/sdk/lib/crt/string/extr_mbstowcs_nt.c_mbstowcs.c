
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;
 int RtlMultiByteToUnicodeN (int *,int,int*,char const*,int) ;
 int RtlMultiByteToUnicodeSize (int*,char const*,int) ;
 scalar_t__ strlen (char const*) ;

size_t mbstowcs (wchar_t *wcstr, const char *mbstr, size_t count)
{
 NTSTATUS Status;
 ULONG Size;
 ULONG Length;

 Length = (ULONG)strlen (mbstr);

 if (wcstr == ((void*)0))
 {
  RtlMultiByteToUnicodeSize (&Size,
                             mbstr,
                             Length);

  return (size_t)(Size / sizeof(wchar_t));
 }

 Status = RtlMultiByteToUnicodeN (wcstr,
                                  (ULONG)count * sizeof(WCHAR),
                                  &Size,
                                  mbstr,
                                  Length);
 if (!NT_SUCCESS(Status))
  return -1;

 return (size_t)(Size / sizeof(wchar_t));
}
