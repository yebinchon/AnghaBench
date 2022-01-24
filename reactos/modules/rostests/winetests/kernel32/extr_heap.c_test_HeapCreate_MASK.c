#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_3__ {int dwPageSize; } ;
typedef  TYPE_1__ SYSTEM_INFO ;
typedef  scalar_t__* LPVOID ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  HEAP_REALLOC_IN_PLACE_ONLY ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    SYSTEM_INFO sysInfo;
    ULONG memchunk;
    HANDLE heap;
    LPVOID mem1,mem1a,mem3;
    UCHAR *mem2,*mem2a;
    UINT i;
    BOOL error;
    DWORD dwSize;

    /* Retrieve the page size for this system */
    FUNC0(&sysInfo);
    FUNC7(sysInfo.dwPageSize>0,"GetSystemInfo should return a valid page size\n");

    /* Create a Heap with a minimum and maximum size */
    /* Note that Windows and Wine seem to behave a bit differently with respect
       to memory allocation.  In Windows, you can't access all the memory
       specified in the heap (due to overhead), so choosing a reasonable maximum
       size for the heap was done mostly by trial-and-error on Win2k.  It may need
       more tweaking for otherWindows variants.
    */
    memchunk=10*sysInfo.dwPageSize;
    heap=FUNC2(0,2*memchunk,5*memchunk);
    FUNC7( !((ULONG_PTR)heap & 0xffff), "heap %p not 64K aligned\n", heap );

    /* Check that HeapCreate allocated the right amount of ram */
    mem1=FUNC1(heap,0,5*memchunk+1);
    FUNC7(mem1==NULL,"HeapCreate allocated more Ram than it should have\n");
    FUNC4(heap,0,mem1);

    /* Check that a normal alloc works */
    mem1=FUNC1(heap,0,memchunk);
    FUNC7(mem1!=NULL,"HeapAlloc failed\n");
    if(mem1) {
      FUNC7(FUNC6(heap,0,mem1)>=memchunk, "HeapAlloc should return a big enough memory block\n");
    }

    /* Check that a 'zeroing' alloc works */
    mem2=FUNC1(heap,HEAP_ZERO_MEMORY,memchunk);
    FUNC7(mem2!=NULL,"HeapAlloc failed\n");
    if(mem2) {
      FUNC7(FUNC6(heap,0,mem2)>=memchunk,"HeapAlloc should return a big enough memory block\n");
      error=FALSE;
      for(i=0;i<memchunk;i++) {
        if(mem2[i]!=0) {
          error=TRUE;
        }
      }
      FUNC7(!error,"HeapAlloc should have zeroed out its allocated memory\n");
    }

    /* Check that HeapAlloc returns NULL when requested way too much memory */
    mem3=FUNC1(heap,0,5*memchunk);
    FUNC7(mem3==NULL,"HeapAlloc should return NULL\n");
    if(mem3) {
      FUNC7(FUNC4(heap,0,mem3),"HeapFree didn't pass successfully\n");
    }

    /* Check that HeapReAlloc works */
    mem2a=FUNC5(heap,HEAP_ZERO_MEMORY,mem2,memchunk+5*sysInfo.dwPageSize);
    FUNC7(mem2a!=NULL,"HeapReAlloc failed\n");
    if(mem2a) {
      FUNC7(FUNC6(heap,0,mem2a)>=memchunk+5*sysInfo.dwPageSize,"HeapReAlloc failed\n");
      error=FALSE;
      for(i=0;i<5*sysInfo.dwPageSize;i++) {
        if(mem2a[memchunk+i]!=0) {
          error=TRUE;
        }
      }
      FUNC7(!error,"HeapReAlloc should have zeroed out its allocated memory\n");
    }

    /* Check that HeapReAlloc honours HEAP_REALLOC_IN_PLACE_ONLY */
    error=FALSE;
    mem1a=FUNC5(heap,HEAP_REALLOC_IN_PLACE_ONLY,mem1,memchunk+sysInfo.dwPageSize);
    if(mem1a!=NULL) {
      if(mem1a!=mem1) {
        error=TRUE;
      }
    }
    FUNC7(mem1a==NULL || !error,"HeapReAlloc didn't honour HEAP_REALLOC_IN_PLACE_ONLY\n");

    /* Check that HeapFree works correctly */
   if(mem1a) {
     FUNC7(FUNC4(heap,0,mem1a),"HeapFree failed\n");
   } else {
     FUNC7(FUNC4(heap,0,mem1),"HeapFree failed\n");
   }
   if(mem2a) {
     FUNC7(FUNC4(heap,0,mem2a),"HeapFree failed\n");
   } else {
     FUNC7(FUNC4(heap,0,mem2),"HeapFree failed\n");
   }

   /* 0-length buffer */
   mem1 = FUNC1(heap, 0, 0);
   FUNC7(mem1 != NULL, "Reserved memory\n");

   dwSize = FUNC6(heap, 0, mem1);
   /* should work with 0-length buffer */
   FUNC7(dwSize < 0xFFFFFFFF, "The size of the 0-length buffer\n");
   FUNC7(FUNC4(heap, 0, mem1), "Freed the 0-length buffer\n");

   /* Check that HeapDestroy works */
   FUNC7(FUNC3(heap),"HeapDestroy failed\n");
}