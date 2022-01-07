
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {scalar_t__ dwPhysAddrLen; int* bPhysAddr; char* dwOutUcastPkts; int dwOutErrors; int dwOutDiscards; int dwOutNUcastPkts; int dwOutOctets; int dwInUnknownProtos; int dwInErrors; int dwInDiscards; int dwInNUcastPkts; int dwInUcastPkts; int dwInOctets; int dwSpeed; int dwMtu; int dwType; int dwIndex; int wszName; } ;
struct TYPE_6__ {scalar_t__ dwNumEntries; TYPE_2__* table; } ;
typedef TYPE_1__* PMIB_IFTABLE ;
typedef TYPE_2__ MIB_IFROW ;
typedef scalar_t__ DWORD ;


 int CP_ACP ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MAX_INTERFACE_NAME_LEN ;
 scalar_t__ NO_ERROR ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetIfTable (TYPE_1__*,int *,int ) ;
 int printf (char*,...) ;
 int skip (char*) ;
 int trace (char*,scalar_t__,...) ;
 int winetest_debug ;

__attribute__((used)) static void testGetIfTable(void)
{
  if (pGetIfTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = pGetIfTable(((void*)0), ((void*)0), FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetIfTable is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIfTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetIfTable(((void*)0), &dwSize, FALSE);
    ok(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetIfTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_IFTABLE buf = HeapAlloc(GetProcessHeap(), 0, dwSize);

      apiReturn = pGetIfTable(buf, &dwSize, FALSE);
      ok(apiReturn == NO_ERROR,
       "GetIfTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i, j;
          char name[MAX_INTERFACE_NAME_LEN];

          trace( "interface table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              MIB_IFROW *row = &buf->table[i];
              WideCharToMultiByte( CP_ACP, 0, row->wszName, -1, name, MAX_INTERFACE_NAME_LEN, ((void*)0), ((void*)0) );
              trace( "%u: '%s' type %u mtu %u speed %u phys",
                     row->dwIndex, name, row->dwType, row->dwMtu, row->dwSpeed );
              for (j = 0; j < row->dwPhysAddrLen; j++)
                  printf( " %02x", row->bPhysAddr[j] );
              printf( "\n" );
              trace( "        in: bytes %u upkts %u nupkts %u disc %u err %u unk %u\n",
                     row->dwInOctets, row->dwInUcastPkts, row->dwInNUcastPkts,
                     row->dwInDiscards, row->dwInErrors, row->dwInUnknownProtos );
              trace( "        out: bytes %u upkts %u nupkts %u disc %u err %u\n",
                     row->dwOutOctets, row->dwOutUcastPkts, row->dwOutNUcastPkts,
                     row->dwOutDiscards, row->dwOutErrors );
          }
      }
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
