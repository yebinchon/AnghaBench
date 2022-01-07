
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int dwForwardIfIndex; int dwForwardNextHop; int dwForwardMask; int dwForwardDest; } ;
struct TYPE_8__ {int dwForwardType; } ;
struct TYPE_7__ {scalar_t__ dwNumEntries; TYPE_4__* table; } ;
typedef TYPE_1__* PMIB_IPFORWARDTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ NO_ERROR ;
 TYPE_3__ U1 (TYPE_4__) ;
 char* ntoa (int ) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetIpForwardTable (TYPE_1__*,int *,int ) ;
 int skip (char*) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 int trace (char*,scalar_t__,...) ;
 int winetest_debug ;

__attribute__((used)) static void testGetIpForwardTable(void)
{
  if (pGetIpForwardTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = pGetIpForwardTable(((void*)0), ((void*)0), FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetIpForwardTable is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIpForwardTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetIpForwardTable(((void*)0), &dwSize, FALSE);
    ok(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetIpForwardTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_IPFORWARDTABLE buf = HeapAlloc(GetProcessHeap(), 0, dwSize);

      apiReturn = pGetIpForwardTable(buf, &dwSize, FALSE);
      ok(apiReturn == NO_ERROR,
       "GetIpForwardTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i;

          trace( "IP forward table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              char buffer[100];
              sprintf( buffer, "dest %s", ntoa( buf->table[i].dwForwardDest ));
              sprintf( buffer + strlen(buffer), " mask %s", ntoa( buf->table[i].dwForwardMask ));
              trace( "%u: %s gw %s if %u type %u\n", i, buffer,
                     ntoa( buf->table[i].dwForwardNextHop ),
                     buf->table[i].dwForwardIfIndex, U1(buf->table[i]).dwForwardType );
          }
      }
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
