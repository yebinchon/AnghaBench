
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef size_t UINT ;
typedef scalar_t__ UCHAR ;
typedef int * HLOCAL ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetLastError () ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 int * LocalAlloc (int,size_t) ;
 int * LocalDiscard (int *) ;
 int * LocalFree (int *) ;
 int * LocalHandle (scalar_t__*) ;
 scalar_t__* LocalLock (int *) ;
 int * LocalReAlloc (int *,int,int) ;
 int LocalSize (int *) ;
 scalar_t__ LocalUnlock (int *) ;
 int NO_ERROR ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_LocalAlloc(void)
{
    ULONG memchunk;
    HLOCAL mem1,mem2,mem2a,mem2b;
    UCHAR *mem2ptr;
    UINT i;
    BOOL error;
    memchunk=100000;


    mem1=LocalAlloc(0,memchunk);
    ok(mem1!=((void*)0),"LocalAlloc failed: error=%d\n",GetLastError());
    if(mem1) {
      ok(LocalSize(mem1)>=memchunk, "LocalAlloc should return a big enough memory block\n");
    }


    mem2=LocalAlloc(LMEM_ZEROINIT|LMEM_MOVEABLE,memchunk);
    ok(mem2!=((void*)0),"LocalAlloc failed: error=%d\n",GetLastError());
    if(mem2) {
      ok(LocalSize(mem2)>=memchunk,"LocalAlloc should return a big enough memory block\n");
      mem2ptr=LocalLock(mem2);
      ok(mem2ptr!=((void*)0),"LocalLock: error=%d\n",GetLastError());
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[i]!=0) {
            error=TRUE;
          }
        }
        ok(!error,"LocalAlloc should have zeroed out its allocated memory\n");
        SetLastError(0);
        error=LocalUnlock(mem2);
        ok(!error && GetLastError()==NO_ERROR,
           "LocalUnlock Failed: rc=%d err=%d\n",error,GetLastError());
      }
    }
   mem2a=LocalFree(mem2);
   ok(mem2a==((void*)0), "LocalFree failed: %p\n",mem2a);


   mem2=LocalAlloc(LMEM_MOVEABLE | LMEM_ZEROINIT,memchunk);
   ok(mem2!=((void*)0), "LocalAlloc failed to create moveable memory, error=%d\n",GetLastError());


    mem2a=LocalReAlloc(mem2,2*memchunk,LMEM_MOVEABLE | LMEM_ZEROINIT);
    ok(mem2a!=((void*)0),"LocalReAlloc failed, error=%d\n",GetLastError());
    if(mem2a) {
      ok(LocalSize(mem2a)>=2*memchunk,"LocalReAlloc failed\n");
      mem2ptr=LocalLock(mem2a);
      ok(mem2ptr!=((void*)0),"LocalLock Failed\n");
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[memchunk+i]!=0) {
            error=TRUE;
          }
        }
        ok(!error,"LocalReAlloc should have zeroed out its allocated memory\n");

        mem2b=LocalHandle(mem2ptr);
        ok(mem2b==mem2a,"LocalHandle didn't return the correct memory handle %p/%p for %p\n",
           mem2a, mem2b, mem2ptr);

        mem2b=LocalDiscard(mem2a);
        ok(mem2b==((void*)0),"Discarded memory we shouldn't have\n");
        SetLastError(NO_ERROR);
        ok(!LocalUnlock(mem2a) && GetLastError()==NO_ERROR, "LocalUnlock Failed\n");
      }
    }
    if(mem1) {
      ok(LocalFree(mem1)==((void*)0),"LocalFree failed\n");
    }
    if(mem2a) {
      ok(LocalFree(mem2a)==((void*)0),"LocalFree failed\n");
    } else {
      ok(LocalFree(mem2)==((void*)0),"LocalFree failed\n");
    }
}
