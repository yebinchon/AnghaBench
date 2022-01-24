#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  dwForwardIfIndex; int /*<<< orphan*/  dwForwardNextHop; int /*<<< orphan*/  dwForwardMask; int /*<<< orphan*/  dwForwardDest; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwForwardType; } ;
struct TYPE_7__ {scalar_t__ dwNumEntries; TYPE_4__* table; } ;
typedef  TYPE_1__* PMIB_IPFORWARDTABLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ NO_ERROR ; 
 TYPE_3__ FUNC3 (TYPE_4__) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC11(void)
{
  if (&pGetIpForwardTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = FUNC6(NULL, NULL, FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC7("GetIpForwardTable is not supported\n");
      return;
    }
    FUNC5(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIpForwardTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC6(NULL, &dwSize, FALSE);
    FUNC5(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetIpForwardTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_IPFORWARDTABLE buf = FUNC1(FUNC0(), 0, dwSize);

      apiReturn = FUNC6(buf, &dwSize, FALSE);
      FUNC5(apiReturn == NO_ERROR,
       "GetIpForwardTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i;

          FUNC10( "IP forward table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              char buffer[100];
              FUNC8( buffer, "dest %s", FUNC4( buf->table[i].dwForwardDest ));
              FUNC8( buffer + FUNC9(buffer), " mask %s", FUNC4( buf->table[i].dwForwardMask ));
              FUNC10( "%u: %s gw %s if %u type %u\n", i, buffer,
                     FUNC4( buf->table[i].dwForwardNextHop ),
                     buf->table[i].dwForwardIfIndex, FUNC3(buf->table[i]).dwForwardType );
          }
      }
      FUNC2(FUNC0(), 0, buf);
    }
  }
}