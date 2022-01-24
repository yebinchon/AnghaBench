#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_9__ {int /*<<< orphan*/ * String; } ;
struct TYPE_8__ {int /*<<< orphan*/ * String; } ;
struct TYPE_10__ {TYPE_2__ IpMask; TYPE_1__ IpAddress; } ;
struct TYPE_11__ {struct TYPE_11__* Next; TYPE_3__ IpAddressList; int /*<<< orphan*/  AdapterName; } ;
typedef  TYPE_4__* PIP_ADAPTER_INFO ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BUFFER_OVERFLOW ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ ERROR_NO_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
  if (&pGetAdaptersInfo) {
    DWORD apiReturn;
    ULONG len = 0;

    apiReturn = FUNC4(NULL, NULL);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC5("GetAdaptersInfo is not supported\n");
      return;
    }
    FUNC3(apiReturn == ERROR_INVALID_PARAMETER,
     "GetAdaptersInfo returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC4(NULL, &len);
    FUNC3(apiReturn == ERROR_NO_DATA || apiReturn == ERROR_BUFFER_OVERFLOW,
     "GetAdaptersInfo returned %d, expected ERROR_NO_DATA or ERROR_BUFFER_OVERFLOW\n",
     apiReturn);
    if (apiReturn == ERROR_NO_DATA)
      ; /* no adapter's, that's okay */
    else if (apiReturn == ERROR_BUFFER_OVERFLOW) {
      PIP_ADAPTER_INFO ptr, buf = FUNC1(FUNC0(), 0, len);

      apiReturn = FUNC4(buf, &len);
      FUNC3(apiReturn == NO_ERROR,
       "GetAdaptersInfo(buf, &dwSize) returned %d, expected NO_ERROR\n",
       apiReturn);
      ptr = buf;
      while (ptr) {
        FUNC3(ptr->IpAddressList.IpAddress.String[0], "A valid IP must be present\n");
        FUNC3(ptr->IpAddressList.IpMask.String[0], "A valid mask must be present\n");
        FUNC6("Adapter '%s', IP %s, Mask %s\n", ptr->AdapterName,
              ptr->IpAddressList.IpAddress.String, ptr->IpAddressList.IpMask.String);
        ptr = ptr->Next;
      }
      FUNC2(FUNC0(), 0, buf);
    }
  }
}