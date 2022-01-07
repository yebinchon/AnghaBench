
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dummystream {int seekcalls; scalar_t__ statcalls; scalar_t__ readcalls; scalar_t__ writecalls; int IStream_iface; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {long QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef scalar_t__ HRESULT ;


 int InitDummyStream (struct dummystream*) ;
 scalar_t__ S_OK ;
 int Seek (int *,TYPE_2__,int ,int *) ;
 int ok (int,char*) ;
 int pSHLWAPI_213 (int *) ;
 scalar_t__ pSHLWAPI_214 (int *,TYPE_1__*) ;

__attribute__((used)) static void test_SHLWAPI_213(void)
{
  struct dummystream streamobj;
  ULARGE_INTEGER ul;
  LARGE_INTEGER ll;
  HRESULT hRet;

  if (!pSHLWAPI_213 || !pSHLWAPI_214)
    return;

  InitDummyStream(&streamobj);
  ll.QuadPart = 5000l;
  Seek(&streamobj.IStream_iface, ll, 0, ((void*)0));

  streamobj.seekcalls = 0;
  pSHLWAPI_213(&streamobj.IStream_iface);
  ok(streamobj.statcalls == 0, "called Stat()\n");
  ok(streamobj.readcalls == 0, "called Read()\n");
  ok(streamobj.writecalls == 0, "called Write()\n");
  ok(streamobj.seekcalls == 1, "wrong call count\n");

  ul.QuadPart = 50001;
  hRet = pSHLWAPI_214(&streamobj.IStream_iface, &ul);
  ok(hRet == S_OK, "failed Stat()\n");
  ok(ul.QuadPart == 0, "213 didn't rewind stream\n");
}
