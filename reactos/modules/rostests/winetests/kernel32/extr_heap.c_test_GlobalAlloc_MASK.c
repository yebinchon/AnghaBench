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
typedef  scalar_t__* HGLOBAL ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int GMEM_MODIFY ; 
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__* FUNC1 (int,size_t) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (scalar_t__*) ; 
 scalar_t__* FUNC6 (scalar_t__*,int,int) ; 
 int FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    ULONG memchunk;
    HGLOBAL mem1,mem2,mem2a,mem2b;
    UCHAR *mem2ptr;
    UINT i;
    BOOL error;
    memchunk=100000;

    FUNC9(NO_ERROR);
    /* Check that a normal alloc works */
    mem1=FUNC1(0,memchunk);
    FUNC10(mem1!=NULL,"GlobalAlloc failed\n");
    if(mem1) {
      FUNC10(FUNC7(mem1)>=memchunk, "GlobalAlloc should return a big enough memory block\n");
    }

    /* Check that a 'zeroing' alloc works */
    mem2=FUNC1(GMEM_ZEROINIT,memchunk);
    FUNC10(mem2!=NULL,"GlobalAlloc failed: error=%d\n",FUNC0());
    if(mem2) {
      FUNC10(FUNC7(mem2)>=memchunk,"GlobalAlloc should return a big enough memory block\n");
      mem2ptr=FUNC5(mem2);
      FUNC10(mem2ptr==mem2,"GlobalLock should have returned the same memory as was allocated\n");
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[i]!=0) {
            error=TRUE;
          }
        }
        FUNC10(!error,"GlobalAlloc should have zeroed out its allocated memory\n");
      }
   }
    /* Check that GlobalReAlloc works */
    /* Check that we can change GMEM_FIXED to GMEM_MOVEABLE */
    mem2a=FUNC6(mem2,0,GMEM_MODIFY | GMEM_MOVEABLE);
    if(mem2a!=NULL) {
      mem2=mem2a;
      mem2ptr=FUNC5(mem2a);
      FUNC10(mem2ptr!=NULL && !FUNC8(mem2a)&&FUNC0()==NO_ERROR,
         "Converting from FIXED to MOVEABLE didn't REALLY work\n");
    }

    /* Check that ReAllocing memory works as expected */
    mem2a=FUNC6(mem2,2*memchunk,GMEM_MOVEABLE | GMEM_ZEROINIT);
    FUNC10(mem2a!=NULL,"GlobalReAlloc failed\n");
    if(mem2a) {
      FUNC10(FUNC7(mem2a)>=2*memchunk,"GlobalReAlloc failed\n");
      mem2ptr=FUNC5(mem2a);
      FUNC10(mem2ptr!=NULL,"GlobalLock Failed\n");
      if(mem2ptr) {
        error=FALSE;
        for(i=0;i<memchunk;i++) {
          if(mem2ptr[memchunk+i]!=0) {
            error=TRUE;
          }
        }
        FUNC10(!error,"GlobalReAlloc should have zeroed out its allocated memory\n");

        /* Check that GlobalHandle works */
        mem2b=FUNC4(mem2ptr);
        FUNC10(mem2b==mem2a,"GlobalHandle didn't return the correct memory handle %p/%p for %p\n",
           mem2a, mem2b, mem2ptr);
        /* Check that we can't discard locked memory */
        mem2b=FUNC2(mem2a);
        if(mem2b==NULL) {
          FUNC10(!FUNC8(mem2a) && FUNC0()==NO_ERROR,"GlobalUnlock Failed\n");
        }
      }
    }
    if(mem1) {
      FUNC10(FUNC3(mem1)==NULL,"GlobalFree failed\n");
    }
    if(mem2a) {
      FUNC10(FUNC3(mem2a)==NULL,"GlobalFree failed\n");
    } else {
      FUNC10(FUNC3(mem2)==NULL,"GlobalFree failed\n");
    }
}