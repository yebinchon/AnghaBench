#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int attr; int mode; int /*<<< orphan*/  bits; int /*<<< orphan*/  nameid; int /*<<< orphan*/  name; int /*<<< orphan*/  pos; } ;
struct TYPE_21__ {int /*<<< orphan*/  id; } ;
struct TYPE_22__ {scalar_t__ depth; char tok; TYPE_1__ val; int /*<<< orphan*/  str; } ;
typedef  int CTSize ;
typedef  int CTInfo ;
typedef  TYPE_2__ CPState ;
typedef  int /*<<< orphan*/  CPDeclIdx ;
typedef  TYPE_3__ CPDecl ;

/* Variables and functions */
 scalar_t__ CPARSE_MAX_DECLDEPTH ; 
 int CPARSE_MODE_ABSTRACT ; 
 int CPARSE_MODE_DIRECT ; 
 int CPARSE_MODE_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CTALIGN_PTR ; 
 int CTF_QUAL ; 
 int CTF_REF ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CTMASK_MSIZEP ; 
 char CTOK_ANDAND ; 
 char CTOK_EOF ; 
 char CTOK_IDENT ; 
 int CTSHIFT_MSIZEP ; 
 int CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 int /*<<< orphan*/  LJ_ERR_XLEVELS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(CPState *cp, CPDecl *decl)
{
  if (++cp->depth > CPARSE_MAX_DECLDEPTH) FUNC7(cp, LJ_ERR_XLEVELS);

  for (;;) {  /* Head of declarator. */
    if (FUNC12(cp, '*')) {  /* Pointer. */
      CTSize sz;
      CTInfo info;
      FUNC5(cp, decl);
      sz = CTSIZE_PTR;
      info = FUNC1(CT_PTR, CTALIGN_PTR);
#if LJ_64
      if (ctype_msizeP(decl->attr) == 4) {
	sz = 4;
	info = CTINFO(CT_PTR, CTALIGN(2));
      }
#endif
      info += (decl->attr & (CTF_QUAL|CTF_REF));
      decl->attr &= ~(CTF_QUAL|(CTMASK_MSIZEP<<CTSHIFT_MSIZEP));
      FUNC13(decl, info, sz);
    } else if (FUNC12(cp, '&') || FUNC12(cp, CTOK_ANDAND)) {  /* Reference. */
      decl->attr &= ~(CTF_QUAL|(CTMASK_MSIZEP<<CTSHIFT_MSIZEP));
      FUNC13(decl, FUNC2(0), CTSIZE_PTR);
    } else {
      break;
    }
  }

  if (FUNC12(cp, '(')) {  /* Inner declarator. */
    CPDeclIdx pos;
    FUNC5(cp, decl);
    /* Resolve ambiguity between inner declarator and 1st function parameter. */
    if ((decl->mode & CPARSE_MODE_ABSTRACT) &&
	(cp->tok == ')' || FUNC10(cp))) goto func_decl;
    pos = decl->pos;
    FUNC16(cp, decl);
    FUNC3(cp, ')');
    decl->pos = pos;
  } else if (cp->tok == CTOK_IDENT) {  /* Direct declarator. */
    if (!(decl->mode & CPARSE_MODE_DIRECT)) FUNC8(cp, CTOK_EOF);
    decl->name = cp->str;
    decl->nameid = cp->val.id;
    FUNC11(cp);
  } else {  /* Abstract declarator. */
    if (!(decl->mode & CPARSE_MODE_ABSTRACT)) FUNC8(cp, CTOK_IDENT);
  }

  for (;;) {  /* Tail of declarator. */
    if (FUNC12(cp, '[')) {  /* Array. */
      FUNC4(cp, decl);
    } else if (FUNC12(cp, '(')) {  /* Function. */
    func_decl:
      FUNC6(cp, decl);
    } else {
      break;
    }
  }

  if ((decl->mode & CPARSE_MODE_FIELD) && FUNC12(cp, ':'))  /* Field width. */
    decl->bits = FUNC9(cp);

  /* Process postfix attributes. */
  FUNC5(cp, decl);
  FUNC14(decl);

  cp->depth--;
}