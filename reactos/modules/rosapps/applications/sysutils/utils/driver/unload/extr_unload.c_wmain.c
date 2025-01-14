
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int Length; char* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int UNICODE_NULL ;
typedef int NTSTATUS ;
typedef char* LPWSTR ;


 int NT_SUCCESS (int) ;
 int NtUnloadDriver (TYPE_1__*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int wcslen (char*) ;
 int wprintf (char*,...) ;
 int wsprintf (char*,char*,char*) ;

int wmain(int argc, WCHAR * argv[])
{
   NTSTATUS Status;
   UNICODE_STRING ServiceName;

   if (argc != 2)
   {
      wprintf(L"Usage: unload <ServiceName>\n");
      return 0;
   }
   ServiceName.Length = (wcslen(argv[1]) + 52) * sizeof(WCHAR);
   ServiceName.Buffer = (LPWSTR)malloc(ServiceName.Length + sizeof(UNICODE_NULL));
   wsprintf(ServiceName.Buffer,
      L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\%S",
      argv[1]);
   wprintf(L"%s %d %Ud\n", ServiceName.Buffer, ServiceName.Length, wcslen(ServiceName.Buffer));
   Status = NtUnloadDriver(&ServiceName);
   free(ServiceName.Buffer);
   if (!NT_SUCCESS(Status))
   {
      wprintf(L"Failed: %X\n", Status);
      return 1;
   }
   return 0;
}
