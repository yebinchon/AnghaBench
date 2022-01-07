
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;
 int RtlUnicodeToMultiByteN (char*,int,int*,int *,int) ;
 int RtlUnicodeToMultiByteSize (int*,int *,int) ;
 scalar_t__ wcslen (int const*) ;

size_t wcstombs (char *mbstr, const wchar_t *wcstr, size_t count)
{
 NTSTATUS Status;
 ULONG Size;
 ULONG Length;

 Length = (ULONG)wcslen (wcstr);

 if (mbstr == ((void*)0))
 {
  RtlUnicodeToMultiByteSize (&Size,
                             (wchar_t*)((size_t)wcstr),
                             Length * sizeof(WCHAR));

  return (size_t)(Size / sizeof(char));
 }

 Status = RtlUnicodeToMultiByteN (mbstr,
                                  (ULONG)count,
                                  &Size,
                                  (wchar_t*)((size_t)wcstr),
                                  Length * sizeof(WCHAR));
 if (!NT_SUCCESS(Status))
  return -1;

 return (size_t)(Size / sizeof(char));
}
