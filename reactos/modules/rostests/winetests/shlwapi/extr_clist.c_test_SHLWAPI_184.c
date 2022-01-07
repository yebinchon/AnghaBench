
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummystream {int readcalls; scalar_t__ writecalls; scalar_t__ seekcalls; int IStream_iface; } ;
typedef int buff ;
typedef scalar_t__ HRESULT ;


 int InitDummyStream (struct dummystream*) ;
 scalar_t__ S_OK ;
 int ok (int,char*) ;
 scalar_t__ pSHLWAPI_184 (int *,char*,int) ;

__attribute__((used)) static void test_SHLWAPI_184(void)
{
  struct dummystream streamobj;
  char buff[256];
  HRESULT hRet;

  if (!pSHLWAPI_184)
    return;

  InitDummyStream(&streamobj);
  hRet = pSHLWAPI_184(&streamobj.IStream_iface, buff, sizeof(buff));

  ok(hRet == S_OK, "failed Read()\n");
  ok(streamobj.readcalls == 1, "wrong call count\n");
  ok(streamobj.writecalls == 0, "called Write()\n");
  ok(streamobj.seekcalls == 0, "called Seek()\n");
}
