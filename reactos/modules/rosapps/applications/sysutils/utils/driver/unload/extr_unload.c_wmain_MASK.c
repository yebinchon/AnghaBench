#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int Length; char* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  UNICODE_NULL ;
typedef  int NTSTATUS ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

int FUNC7(int argc, WCHAR * argv[])
{
   NTSTATUS Status;
   UNICODE_STRING ServiceName;

   if (argc != 2)
   {
      FUNC5(L"Usage: unload <ServiceName>\n");
      return 0;
   }
   ServiceName.Length = (FUNC4(argv[1]) + 52) * sizeof(WCHAR);
   ServiceName.Buffer = (LPWSTR)FUNC3(ServiceName.Length + sizeof(UNICODE_NULL));
   FUNC6(ServiceName.Buffer,
      L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\%S",
      argv[1]);
   FUNC5(L"%s %d %Ud\n", ServiceName.Buffer, ServiceName.Length, FUNC4(ServiceName.Buffer));
   Status = FUNC1(&ServiceName);
   FUNC2(ServiceName.Buffer);
   if (!FUNC0(Status))
   {
      FUNC5(L"Failed: %X\n", Status);
      return 1;
   }
   return 0;
}