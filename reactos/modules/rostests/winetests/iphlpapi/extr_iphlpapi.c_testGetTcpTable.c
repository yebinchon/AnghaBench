
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int dwRemotePort; int dwRemoteAddr; int dwLocalPort; int dwLocalAddr; } ;
struct TYPE_8__ {int dwState; } ;
struct TYPE_7__ {scalar_t__ dwNumEntries; TYPE_4__* table; } ;
typedef TYPE_1__* PMIB_TCPTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ ERROR_NO_DATA ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ NO_ERROR ;
 TYPE_3__ U (TYPE_4__) ;
 scalar_t__ broken (int) ;
 char* ntoa (int ) ;
 int ntohs (int ) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetTcpTable (TYPE_1__*,int *,int ) ;
 int skip (char*) ;
 int sprintf (char*,char*,char*,int) ;
 int trace (char*,scalar_t__,...) ;
 int winetest_debug ;

__attribute__((used)) static void testGetTcpTable(void)
{
  if (pGetTcpTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = pGetTcpTable(((void*)0), &dwSize, FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetTcpTable is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INSUFFICIENT_BUFFER ||
       broken(apiReturn == ERROR_NO_DATA),
     "GetTcpTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_TCPTABLE buf = HeapAlloc(GetProcessHeap(), 0, dwSize);

      apiReturn = pGetTcpTable(buf, &dwSize, FALSE);
      ok(apiReturn == NO_ERROR,
       "GetTcpTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n",
       apiReturn);

      if (apiReturn == NO_ERROR && winetest_debug > 1)
      {
          DWORD i;
          trace( "TCP table: %u entries\n", buf->dwNumEntries );
          for (i = 0; i < buf->dwNumEntries; i++)
          {
              char buffer[40];
              sprintf( buffer, "local %s:%u",
                       ntoa(buf->table[i].dwLocalAddr), ntohs(buf->table[i].dwLocalPort) );
              trace( "%u: %s remote %s:%u state %u\n",
                     i, buffer, ntoa( buf->table[i].dwRemoteAddr ),
                     ntohs(buf->table[i].dwRemotePort), U(buf->table[i]).dwState );
          }
      }
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
