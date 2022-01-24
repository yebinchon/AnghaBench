#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t ULONG ;
typedef  size_t UINT ;
typedef  scalar_t__ UCHAR ;
typedef  int /*<<< orphan*/ * HLOCAL ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 int /*<<< orphan*/ * FUNC1 (int,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    ULONG memchunk;
    HLOCAL mem1,mem2,mem2a,mem2b;
    UCHAR *mem2ptr;
    UINT i;
    BOOL error;
    memchunk=100000;

    /* Check that a normal alloc works */
    mem1=FUNC1(0,memchunk);
    FUNC10(mem1!=NULL,"LocalAlloc failed: error=%d\n",FUNC0());
    if(mem1) {
      FUNC10(FUNC7(mem1)>=memchunk, "LocalAlloc should return a big enough memory block\n");
    }

    /* Check that a 'zeroing' and lock alloc works */
    mem2=FUNC1(LMEM_ZEROINIT|LMEM_MOVEABLE,memchunk);
    FUNC10(mem2!=NULL,"LocalAlloc failed: error=%d\n",FUNC0());
    if(mem2) {
      FUNC10(FUNC7(mem2)>=memchunk,"LocalAlloc should return a big enough memory block\n");
      mem2ptr=FUNC5(mem2);
      FUNC10(mem2ptr!=NULL,"LocalLock: error=%d\n",FUNC0());
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[i]!=0) {
            error=TRUE;
          }
        }
        FUNC10(!error,"LocalAlloc should have zeroed out its allocated memory\n");
        FUNC9(0);
        error=FUNC8(mem2);
        FUNC10(!error && FUNC0()==NO_ERROR,
           "LocalUnlock Failed: rc=%d err=%d\n",error,FUNC0());
      }
    }
   mem2a=FUNC3(mem2);
   FUNC10(mem2a==NULL, "LocalFree failed: %p\n",mem2a);

   /* Reallocate mem2 as moveable memory */
   mem2=FUNC1(LMEM_MOVEABLE | LMEM_ZEROINIT,memchunk);
   FUNC10(mem2!=NULL, "LocalAlloc failed to create moveable memory, error=%d\n",FUNC0());

   /* Check that ReAllocing memory works as expected */
    mem2a=FUNC6(mem2,2*memchunk,LMEM_MOVEABLE | LMEM_ZEROINIT);
    FUNC10(mem2a!=NULL,"LocalReAlloc failed, error=%d\n",FUNC0());
    if(mem2a) {
      FUNC10(FUNC7(mem2a)>=2*memchunk,"LocalReAlloc failed\n");
      mem2ptr=FUNC5(mem2a);
      FUNC10(mem2ptr!=NULL,"LocalLock Failed\n");
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[memchunk+i]!=0) {
            error=TRUE;
          }
        }
        FUNC10(!error,"LocalReAlloc should have zeroed out its allocated memory\n");
        /* Check that LocalHandle works */
        mem2b=FUNC4(mem2ptr);
        FUNC10(mem2b==mem2a,"LocalHandle didn't return the correct memory handle %p/%p for %p\n",
           mem2a, mem2b, mem2ptr);
        /* Check that we can't discard locked memory */
        mem2b=FUNC2(mem2a);
        FUNC10(mem2b==NULL,"Discarded memory we shouldn't have\n");
        FUNC9(NO_ERROR);
        FUNC10(!FUNC8(mem2a) && FUNC0()==NO_ERROR, "LocalUnlock Failed\n");
      }
    }
    if(mem1) {
      FUNC10(FUNC3(mem1)==NULL,"LocalFree failed\n");
    }
    if(mem2a) {
      FUNC10(FUNC3(mem2a)==NULL,"LocalFree failed\n");
    } else {
      FUNC10(FUNC3(mem2)==NULL,"LocalFree failed\n");
    }
}