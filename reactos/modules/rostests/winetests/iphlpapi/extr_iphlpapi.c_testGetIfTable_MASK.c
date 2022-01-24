#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {scalar_t__ dwPhysAddrLen; int* bPhysAddr; char* dwOutUcastPkts; int /*<<< orphan*/  dwOutErrors; int /*<<< orphan*/  dwOutDiscards; int /*<<< orphan*/  dwOutNUcastPkts; int /*<<< orphan*/  dwOutOctets; int /*<<< orphan*/  dwInUnknownProtos; int /*<<< orphan*/  dwInErrors; int /*<<< orphan*/  dwInDiscards; int /*<<< orphan*/  dwInNUcastPkts; int /*<<< orphan*/  dwInUcastPkts; int /*<<< orphan*/  dwInOctets; int /*<<< orphan*/  dwSpeed; int /*<<< orphan*/  dwMtu; int /*<<< orphan*/  dwType; int /*<<< orphan*/  dwIndex; int /*<<< orphan*/  wszName; } ;
struct TYPE_6__ {scalar_t__ dwNumEntries; TYPE_2__* table; } ;
typedef  TYPE_1__* PMIB_IFTABLE ;
typedef  TYPE_2__ MIB_IFROW ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int MAX_INTERFACE_NAME_LEN ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC9(void)
{
  if (&pGetIfTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = FUNC5(NULL, NULL, FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC7("GetIfTable is not supported\n");
      return;
    }
    FUNC4(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIfTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC5(NULL, &dwSize, FALSE);
    FUNC4(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetIfTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_IFTABLE buf = FUNC1(FUNC0(), 0, dwSize);

      apiReturn = FUNC5(buf, &dwSize, FALSE);
      FUNC4(apiReturn == NO_ERROR,
       "GetIfTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i, j;
          char name[MAX_INTERFACE_NAME_LEN];

          FUNC8( "interface table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              MIB_IFROW *row = &buf->table[i];
              FUNC3( CP_ACP, 0, row->wszName, -1, name, MAX_INTERFACE_NAME_LEN, NULL, NULL );
              FUNC8( "%u: '%s' type %u mtu %u speed %u phys",
                     row->dwIndex, name, row->dwType, row->dwMtu, row->dwSpeed );
              for (j = 0; j < row->dwPhysAddrLen; j++)
                  FUNC6( " %02x", row->bPhysAddr[j] );
              FUNC6( "\n" );
              FUNC8( "        in: bytes %u upkts %u nupkts %u disc %u err %u unk %u\n",
                     row->dwInOctets, row->dwInUcastPkts, row->dwInNUcastPkts,
                     row->dwInDiscards, row->dwInErrors, row->dwInUnknownProtos );
              FUNC8( "        out: bytes %u upkts %u nupkts %u disc %u err %u\n",
                     row->dwOutOctets, row->dwOutUcastPkts, row->dwOutNUcastPkts,
                     row->dwOutDiscards, row->dwOutErrors );
          }
      }
      FUNC2(FUNC0(), 0, buf);
    }
  }
}