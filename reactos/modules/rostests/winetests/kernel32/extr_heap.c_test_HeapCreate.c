
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {int dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef scalar_t__* LPVOID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetSystemInfo (TYPE_1__*) ;
 int HEAP_REALLOC_IN_PLACE_ONLY ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (scalar_t__,int ,int) ;
 scalar_t__ HeapCreate (int ,int,int) ;
 int HeapDestroy (scalar_t__) ;
 int HeapFree (scalar_t__,int ,scalar_t__*) ;
 scalar_t__* HeapReAlloc (scalar_t__,int ,scalar_t__*,int) ;
 int HeapSize (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_HeapCreate(void)
{
    SYSTEM_INFO sysInfo;
    ULONG memchunk;
    HANDLE heap;
    LPVOID mem1,mem1a,mem3;
    UCHAR *mem2,*mem2a;
    UINT i;
    BOOL error;
    DWORD dwSize;


    GetSystemInfo(&sysInfo);
    ok(sysInfo.dwPageSize>0,"GetSystemInfo should return a valid page size\n");
    memchunk=10*sysInfo.dwPageSize;
    heap=HeapCreate(0,2*memchunk,5*memchunk);
    ok( !((ULONG_PTR)heap & 0xffff), "heap %p not 64K aligned\n", heap );


    mem1=HeapAlloc(heap,0,5*memchunk+1);
    ok(mem1==((void*)0),"HeapCreate allocated more Ram than it should have\n");
    HeapFree(heap,0,mem1);


    mem1=HeapAlloc(heap,0,memchunk);
    ok(mem1!=((void*)0),"HeapAlloc failed\n");
    if(mem1) {
      ok(HeapSize(heap,0,mem1)>=memchunk, "HeapAlloc should return a big enough memory block\n");
    }


    mem2=HeapAlloc(heap,HEAP_ZERO_MEMORY,memchunk);
    ok(mem2!=((void*)0),"HeapAlloc failed\n");
    if(mem2) {
      ok(HeapSize(heap,0,mem2)>=memchunk,"HeapAlloc should return a big enough memory block\n");
      error=FALSE;
      for(i=0;i<memchunk;i++) {
        if(mem2[i]!=0) {
          error=TRUE;
        }
      }
      ok(!error,"HeapAlloc should have zeroed out its allocated memory\n");
    }


    mem3=HeapAlloc(heap,0,5*memchunk);
    ok(mem3==((void*)0),"HeapAlloc should return NULL\n");
    if(mem3) {
      ok(HeapFree(heap,0,mem3),"HeapFree didn't pass successfully\n");
    }


    mem2a=HeapReAlloc(heap,HEAP_ZERO_MEMORY,mem2,memchunk+5*sysInfo.dwPageSize);
    ok(mem2a!=((void*)0),"HeapReAlloc failed\n");
    if(mem2a) {
      ok(HeapSize(heap,0,mem2a)>=memchunk+5*sysInfo.dwPageSize,"HeapReAlloc failed\n");
      error=FALSE;
      for(i=0;i<5*sysInfo.dwPageSize;i++) {
        if(mem2a[memchunk+i]!=0) {
          error=TRUE;
        }
      }
      ok(!error,"HeapReAlloc should have zeroed out its allocated memory\n");
    }


    error=FALSE;
    mem1a=HeapReAlloc(heap,HEAP_REALLOC_IN_PLACE_ONLY,mem1,memchunk+sysInfo.dwPageSize);
    if(mem1a!=((void*)0)) {
      if(mem1a!=mem1) {
        error=TRUE;
      }
    }
    ok(mem1a==((void*)0) || !error,"HeapReAlloc didn't honour HEAP_REALLOC_IN_PLACE_ONLY\n");


   if(mem1a) {
     ok(HeapFree(heap,0,mem1a),"HeapFree failed\n");
   } else {
     ok(HeapFree(heap,0,mem1),"HeapFree failed\n");
   }
   if(mem2a) {
     ok(HeapFree(heap,0,mem2a),"HeapFree failed\n");
   } else {
     ok(HeapFree(heap,0,mem2),"HeapFree failed\n");
   }


   mem1 = HeapAlloc(heap, 0, 0);
   ok(mem1 != ((void*)0), "Reserved memory\n");

   dwSize = HeapSize(heap, 0, mem1);

   ok(dwSize < 0xFFFFFFFF, "The size of the 0-length buffer\n");
   ok(HeapFree(heap, 0, mem1), "Freed the 0-length buffer\n");


   ok(HeapDestroy(heap),"HeapDestroy failed\n");
}
