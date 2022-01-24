#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int info; scalar_t__ size; scalar_t__ sib; } ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CTF_VARARG ; 
 scalar_t__ CTSIZE_PTR ; 
 scalar_t__ LJ_64 ; 
 int LUA_MINSTACK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CType *FUNC10(CTState *cts, CType *ct)
{
  int narg = 0;
  if (!FUNC6(ct->info) || (LJ_64 && ct->size != CTSIZE_PTR))
    return NULL;
  ct = FUNC8(cts, ct);
  if (FUNC4(ct->info)) {
    CType *ctr = FUNC8(cts, ct);
    CTypeID fid = ct->sib;
    if (!(FUNC7(ctr->info) || FUNC2(ctr->info) ||
	  FUNC6(ctr->info) || (FUNC5(ctr->info) && ctr->size <= 8)))
      return NULL;
    if ((ct->info & CTF_VARARG))
      return NULL;
    while (fid) {
      CType *ctf = FUNC0(cts, fid);
      if (!FUNC1(ctf->info)) {
	CType *cta;
	FUNC9(FUNC3(ctf->info));
	cta = FUNC8(cts, ctf);
	if (!(FUNC2(cta->info) || FUNC6(cta->info) ||
	      (FUNC5(cta->info) && cta->size <= 8)) ||
	    ++narg >= LUA_MINSTACK-3)
	  return NULL;
      }
      fid = ctf->sib;
    }
    return ct;
  }
  return NULL;
}