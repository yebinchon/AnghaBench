
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int dwNumEntries; TYPE_1__* table; } ;
struct TYPE_6__ {scalar_t__ wType; int dwIndex; int dwAddr; } ;
typedef TYPE_2__* PMIB_IPADDRTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ NO_ERROR ;
 int ntoa (int ) ;
 int ok (int,char*,int) ;
 scalar_t__ pGetIpAddrTable (TYPE_2__*,int *,int ) ;
 int skip (char*) ;
 int testGetIfEntry (int ) ;
 int trace (char*,int,int ,int ,scalar_t__) ;

__attribute__((used)) static void testGetIpAddrTable(void)
{
  if (pGetIpAddrTable) {
    DWORD apiReturn;
    ULONG dwSize = 0;

    apiReturn = pGetIpAddrTable(((void*)0), ((void*)0), FALSE);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetIpAddrTable is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIpAddrTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetIpAddrTable(((void*)0), &dwSize, FALSE);
    ok(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetIpAddrTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PMIB_IPADDRTABLE buf = HeapAlloc(GetProcessHeap(), 0, dwSize);

      apiReturn = pGetIpAddrTable(buf, &dwSize, FALSE);
      ok(apiReturn == NO_ERROR,
       "GetIpAddrTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\n",
       apiReturn);
      if (apiReturn == NO_ERROR && buf->dwNumEntries)
      {
        int i;
        testGetIfEntry(buf->table[0].dwIndex);
        for (i = 0; i < buf->dwNumEntries; i++)
        {
          ok (buf->table[i].wType != 0, "Test[%d]: expected wType > 0\n", i);
          trace("Entry[%d]: addr %s, dwIndex %u, wType 0x%x\n", i,
                ntoa(buf->table[i].dwAddr), buf->table[i].dwIndex, buf->table[i].wType);
        }
      }
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
