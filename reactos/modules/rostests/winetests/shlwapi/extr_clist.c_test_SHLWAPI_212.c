
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummystream {scalar_t__ readcalls; int writecalls; scalar_t__ seekcalls; int IStream_iface; } ;
typedef int buff ;
typedef scalar_t__ HRESULT ;


 int InitDummyStream (struct dummystream*) ;
 scalar_t__ S_OK ;
 int ok (int,char*) ;
 scalar_t__ pSHLWAPI_212 (int *,char*,int) ;

__attribute__((used)) static void test_SHLWAPI_212(void)
{
  struct dummystream streamobj;
  char buff[256];
  HRESULT hRet;

  if (!pSHLWAPI_212)
    return;

  InitDummyStream(&streamobj);
  hRet = pSHLWAPI_212(&streamobj.IStream_iface, buff, sizeof(buff));

  ok(hRet == S_OK, "failed Write()\n");
  ok(streamobj.readcalls == 0, "called Read()\n");
  ok(streamobj.writecalls == 1, "wrong call count\n");
  ok(streamobj.seekcalls == 0, "called Seek()\n");
}
