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
struct TYPE_9__ {int /*<<< orphan*/  dwRemotePort; int /*<<< orphan*/  dwRemoteAddr; int /*<<< orphan*/  dwLocalPort; int /*<<< orphan*/  dwLocalAddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwState; } ;
struct TYPE_7__ {scalar_t__ dwNumEntries; TYPE_4__* table; } ;
typedef  TYPE_1__* PMIB_TCPTABLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ ERROR_NO_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ NO_ERROR ; 
 TYPE_3__ FUNC3 (TYPE_4__) ; 
 scalar_t__ FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC12(void)
{
  if (&pGetTcpTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = FUNC8(NULL, &dwSize, FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC9("GetTcpTable is not supported\n");
      return;
    }
    FUNC7(apiReturn == ERROR_INSUFFICIENT_BUFFER ||
       FUNC4(apiReturn == ERROR_NO_DATA), /* win95 */
     "GetTcpTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_TCPTABLE buf = FUNC1(FUNC0(), 0, dwSize);

      apiReturn = FUNC8(buf, &dwSize, FALSE);
      FUNC7(apiReturn == NO_ERROR,
       "GetTcpTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i;
          FUNC11( "TCP table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              char buffer[40];
              FUNC10( buffer, "local %s:%u",
                       FUNC5(buf->table[i].dwLocalAddr), FUNC6(buf->table[i].dwLocalPort) );
              FUNC11( "%u: %s remote %s:%u state %u\n",
                     i, buffer, FUNC5( buf->table[i].dwRemoteAddr ),
                     FUNC6(buf->table[i].dwRemotePort), FUNC3(buf->table[i]).dwState );
          }
      }
      FUNC2(FUNC0(), 0, buf);
    }
  }
}