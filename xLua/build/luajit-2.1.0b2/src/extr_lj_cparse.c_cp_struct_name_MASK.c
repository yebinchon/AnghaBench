#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_14__ {char tok; int mode; int /*<<< orphan*/  cts; int /*<<< orphan*/  str; TYPE_2__* ct; TYPE_1__ val; int /*<<< orphan*/  tmask; } ;
struct TYPE_13__ {int info; scalar_t__ size; int sib; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_2__ CType ;
typedef  int CTInfo ;
typedef  TYPE_3__ CPState ;
typedef  int /*<<< orphan*/  CPDecl ;

/* Variables and functions */
 int CPARSE_MODE_NOIMPLICIT ; 
 int /*<<< orphan*/  CPNS_DEFAULT ; 
 int /*<<< orphan*/  CPNS_STRUCT ; 
 int CTF_UNION ; 
 int CTMASK_NUM ; 
 scalar_t__ CTOK_IDENT ; 
 scalar_t__ CTSIZE_INVALID ; 
 int /*<<< orphan*/  LJ_ERR_FFI_BADTAG ; 
 int /*<<< orphan*/  LJ_ERR_FFI_REDEF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CTypeID FUNC10(CPState *cp, CPDecl *sdecl, CTInfo info)
{
  CTypeID sid;
  CType *ct;
  cp->tmask = CPNS_STRUCT;
  FUNC3(cp);
  FUNC0(cp, sdecl);
  cp->tmask = CPNS_DEFAULT;
  if (cp->tok != '{') {
    if (cp->tok != CTOK_IDENT) FUNC1(cp, CTOK_IDENT);
    if (cp->val.id) {  /* Name of existing struct/union/enum. */
      sid = cp->val.id;
      ct = cp->ct;
      if ((ct->info ^ info) & (CTMASK_NUM|CTF_UNION))  /* Wrong type. */
	FUNC2(cp, 0, LJ_ERR_FFI_REDEF, FUNC9(FUNC5(FUNC6(ct->name))));
    } else {  /* Create named, incomplete struct/union/enum. */
      if ((cp->mode & CPARSE_MODE_NOIMPLICIT))
	FUNC2(cp, 0, LJ_ERR_FFI_BADTAG, FUNC9(cp->str));
      sid = FUNC8(cp->cts, &ct);
      ct->info = info;
      ct->size = CTSIZE_INVALID;
      FUNC4(ct, cp->str);
      FUNC7(cp->cts, ct, sid);
    }
    FUNC3(cp);
  } else {  /* Create anonymous, incomplete struct/union/enum. */
    sid = FUNC8(cp->cts, &ct);
    ct->info = info;
    ct->size = CTSIZE_INVALID;
  }
  if (cp->tok == '{') {
    if (ct->size != CTSIZE_INVALID || ct->sib)
      FUNC2(cp, 0, LJ_ERR_FFI_REDEF, FUNC9(FUNC5(FUNC6(ct->name))));
    ct->sib = 1;  /* Indicate the type is currently being defined. */
  }
  return sid;
}