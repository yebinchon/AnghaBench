
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {int* Buffer; } ;
typedef int* PWSTR ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int* PULONG ;
typedef int NTSTATUS ;


 int MAX_TRACE ;
 int NT_SUCCESS (int ) ;
 int RtlInitUnicodeString (int *,int*) ;
 int RtlUnicodeStringToInteger (int *,int,int*) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS TiGetProtocolNumber(
  PUNICODE_STRING FileName,
  PULONG Protocol)
{
  UNICODE_STRING us;
  NTSTATUS Status;
  ULONG Value;
  PWSTR Name;

  TI_DbgPrint(MAX_TRACE, ("Called. FileName (%wZ).\n", FileName));

  Name = FileName->Buffer;

  if (*Name++ != (WCHAR)L'\\')
    return STATUS_UNSUCCESSFUL;

  if (*Name == L'\0')
    return STATUS_UNSUCCESSFUL;

  RtlInitUnicodeString(&us, Name);

  Status = RtlUnicodeStringToInteger(&us, 10, &Value);
  if (!NT_SUCCESS(Status) || ((Value > 255)))
    return STATUS_UNSUCCESSFUL;

  *Protocol = Value;

  return STATUS_SUCCESS;
}
