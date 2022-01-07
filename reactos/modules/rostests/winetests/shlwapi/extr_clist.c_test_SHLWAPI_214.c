
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dummystream {scalar_t__ seekcalls; int statcalls; scalar_t__ readcalls; scalar_t__ writecalls; int IStream_iface; } ;
struct TYPE_5__ {long QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {long QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef scalar_t__ HRESULT ;


 int InitDummyStream (struct dummystream*) ;
 scalar_t__ S_OK ;
 int Seek (int *,TYPE_2__,int ,int *) ;
 int ok (int,char*) ;
 scalar_t__ pSHLWAPI_214 (int *,TYPE_1__*) ;

__attribute__((used)) static void test_SHLWAPI_214(void)
{
  struct dummystream streamobj;
  ULARGE_INTEGER ul;
  LARGE_INTEGER ll;
  HRESULT hRet;

  if (!pSHLWAPI_214)
    return;

  InitDummyStream(&streamobj);
  ll.QuadPart = 5000l;
  Seek(&streamobj.IStream_iface, ll, 0, ((void*)0));
  ul.QuadPart = 0;
  streamobj.seekcalls = 0;
  hRet = pSHLWAPI_214(&streamobj.IStream_iface, &ul);

  ok(hRet == S_OK, "failed Stat()\n");
  ok(streamobj.statcalls == 1, "wrong call count\n");
  ok(streamobj.readcalls == 0, "called Read()\n");
  ok(streamobj.writecalls == 0, "called Write()\n");
  ok(streamobj.seekcalls == 0, "called Seek()\n");
  ok(ul.QuadPart == 5000l, "Stat gave wrong size\n");
}
