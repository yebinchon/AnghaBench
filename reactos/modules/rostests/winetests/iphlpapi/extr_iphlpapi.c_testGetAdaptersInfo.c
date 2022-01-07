
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int * String; } ;
struct TYPE_8__ {int * String; } ;
struct TYPE_10__ {TYPE_2__ IpMask; TYPE_1__ IpAddress; } ;
struct TYPE_11__ {struct TYPE_11__* Next; TYPE_3__ IpAddressList; int AdapterName; } ;
typedef TYPE_4__* PIP_ADAPTER_INFO ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ ERROR_NO_DATA ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 scalar_t__ NO_ERROR ;
 int ok (int,char*,...) ;
 scalar_t__ pGetAdaptersInfo (TYPE_4__*,int *) ;
 int skip (char*) ;
 int trace (char*,int ,int *,int *) ;

__attribute__((used)) static void testGetAdaptersInfo(void)
{
  if (pGetAdaptersInfo) {
    DWORD apiReturn;
    ULONG len = 0;

    apiReturn = pGetAdaptersInfo(((void*)0), ((void*)0));
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetAdaptersInfo is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetAdaptersInfo returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetAdaptersInfo(((void*)0), &len);
    ok(apiReturn == ERROR_NO_DATA || apiReturn == ERROR_BUFFER_OVERFLOW,
     "GetAdaptersInfo returned %d, expected ERROR_NO_DATA or ERROR_BUFFER_OVERFLOW\n",
     apiReturn);
    if (apiReturn == ERROR_NO_DATA)
      ;
    else if (apiReturn == ERROR_BUFFER_OVERFLOW) {
      PIP_ADAPTER_INFO ptr, buf = HeapAlloc(GetProcessHeap(), 0, len);

      apiReturn = pGetAdaptersInfo(buf, &len);
      ok(apiReturn == NO_ERROR,
       "GetAdaptersInfo(buf, &dwSize) returned %d, expected NO_ERROR\n",
       apiReturn);
      ptr = buf;
      while (ptr) {
        ok(ptr->IpAddressList.IpAddress.String[0], "A valid IP must be present\n");
        ok(ptr->IpAddressList.IpMask.String[0], "A valid mask must be present\n");
        trace("Adapter '%s', IP %s, Mask %s\n", ptr->AdapterName,
              ptr->IpAddressList.IpAddress.String, ptr->IpAddressList.IpMask.String);
        ptr = ptr->Next;
      }
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
