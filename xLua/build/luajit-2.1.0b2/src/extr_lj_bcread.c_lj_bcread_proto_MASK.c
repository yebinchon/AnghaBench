#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_20__ {int sizebc; int sizekgc; int sizekn; int sizept; int firstline; int numline; int /*<<< orphan*/  varinfo; int /*<<< orphan*/  uvinfo; int /*<<< orphan*/  lineinfo; int /*<<< orphan*/  chunkname; scalar_t__ trace; void* flags; void* sizeuv; int /*<<< orphan*/  uv; int /*<<< orphan*/  k; void* framesize; void* numparams; int /*<<< orphan*/  gct; } ;
struct TYPE_19__ {int /*<<< orphan*/  chunkname; int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int MSize ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ GCproto ;
typedef  int /*<<< orphan*/  GCRef ;
typedef  int BCLine ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int BCDUMP_F_STRIP ; 
 int /*<<< orphan*/  LJ_TPROTO ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int) ; 
 char* FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

GCproto *FUNC13(LexState *ls)
{
  GCproto *pt;
  MSize framesize, numparams, flags, sizeuv, sizekgc, sizekn, sizebc, sizept;
  MSize ofsk, ofsuv, ofsdbg;
  MSize sizedbg = 0;
  BCLine firstline = 0, numline = 0;

  /* Read prototype header. */
  flags = FUNC0(ls);
  numparams = FUNC0(ls);
  framesize = FUNC0(ls);
  sizeuv = FUNC0(ls);
  sizekgc = FUNC6(ls);
  sizekn = FUNC6(ls);
  sizebc = FUNC6(ls) + 1;
  if (!(FUNC3(ls) & BCDUMP_F_STRIP)) {
    sizedbg = FUNC6(ls);
    if (sizedbg) {
      firstline = FUNC6(ls);
      numline = FUNC6(ls);
    }
  }

  /* Calculate total size of prototype including all colocated arrays. */
  sizept = (MSize)sizeof(GCproto) +
	   sizebc*(MSize)sizeof(BCIns) +
	   sizekgc*(MSize)sizeof(GCRef);
  sizept = (sizept + (MSize)sizeof(TValue)-1) & ~((MSize)sizeof(TValue)-1);
  ofsk = sizept; sizept += sizekn*(MSize)sizeof(TValue);
  ofsuv = sizept; sizept += ((sizeuv+1)&~1)*2;
  ofsdbg = sizept; sizept += sizedbg;

  /* Allocate prototype object and initialize its fields. */
  pt = (GCproto *)FUNC9(ls->L, (MSize)sizept);
  pt->gct = ~LJ_TPROTO;
  pt->numparams = (uint8_t)numparams;
  pt->framesize = (uint8_t)framesize;
  pt->sizebc = sizebc;
  FUNC12(pt->k, (char *)pt + ofsk);
  FUNC12(pt->uv, (char *)pt + ofsuv);
  pt->sizekgc = 0;  /* Set to zero until fully initialized. */
  pt->sizekn = sizekn;
  pt->sizept = sizept;
  pt->sizeuv = (uint8_t)sizeuv;
  pt->flags = (uint8_t)flags;
  pt->trace = 0;
  FUNC11(pt->chunkname, FUNC10(ls->chunkname));

  /* Close potentially uninitialized gap between bc and kgc. */
  *(uint32_t *)((char *)pt + ofsk - sizeof(GCRef)*(sizekgc+1)) = 0;

  /* Read bytecode instructions and upvalue refs. */
  FUNC1(ls, pt, sizebc);
  FUNC7(ls, pt, sizeuv);

  /* Read constants. */
  FUNC4(ls, pt, sizekgc);
  pt->sizekgc = sizekgc;
  FUNC5(ls, pt, sizekn);

  /* Read and initialize debug info. */
  pt->firstline = firstline;
  pt->numline = numline;
  if (sizedbg) {
    MSize sizeli = (sizebc-1) << (numline < 256 ? 0 : numline < 65536 ? 1 : 2);
    FUNC12(pt->lineinfo, (char *)pt + ofsdbg);
    FUNC12(pt->uvinfo, (char *)pt + ofsdbg + sizeli);
    FUNC2(ls, pt, sizedbg);
    FUNC12(pt->varinfo, FUNC8(pt));
  } else {
    FUNC12(pt->lineinfo, NULL);
    FUNC12(pt->uvinfo, NULL);
    FUNC12(pt->varinfo, NULL);
  }
  return pt;
}