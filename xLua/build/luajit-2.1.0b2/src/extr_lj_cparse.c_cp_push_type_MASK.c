#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int attr; size_t pos; TYPE_2__* stack; TYPE_1__* cp; } ;
struct TYPE_10__ {int info; int size; int sib; } ;
struct TYPE_9__ {int sib; } ;
struct TYPE_8__ {int /*<<< orphan*/  cts; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_3__ CType ;
typedef  int CTSize ;
typedef  int CTInfo ;
typedef  TYPE_4__ CPDecl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTA_QUAL ; 
 int CTF_COMPLEX ; 
 int CTF_QUAL ; 
 int CTF_VECTOR ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int CTMASK_CID ; 
#define  CT_ARRAY 132 
#define  CT_ATTRIB 131 
#define  CT_ENUM 130 
#define  CT_FUNC 129 
#define  CT_STRUCT 128 
 int CT_TYPEDEF ; 
 size_t FUNC2 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(CPDecl *decl, CTypeID id)
{
  CType *ct = FUNC4(decl->cp->cts, id);
  CTInfo info = ct->info;
  CTSize size = ct->size;
  switch (FUNC6(info)) {
  case CT_STRUCT: case CT_ENUM:
    FUNC2(decl, FUNC1(CT_TYPEDEF, id), 0);  /* Don't copy unique types. */
    if ((decl->attr & CTF_QUAL)) {  /* Push unmerged qualifiers. */
      FUNC2(decl, FUNC1(CT_ATTRIB, FUNC0(CTA_QUAL)),
	      (decl->attr & CTF_QUAL));
      decl->attr &= ~CTF_QUAL;
    }
    break;
  case CT_ATTRIB:
    if (FUNC5(info, CTA_QUAL))
      decl->attr &= ~size;  /* Remove redundant qualifiers. */
    FUNC7(decl, FUNC3(info));  /* Unroll. */
    FUNC2(decl, info & ~CTMASK_CID, size);  /* Copy type. */
    break;
  case CT_ARRAY:
    if ((ct->info & (CTF_VECTOR|CTF_COMPLEX))) {
      info |= (decl->attr & CTF_QUAL);
      decl->attr &= ~CTF_QUAL;
    }
    FUNC7(decl, FUNC3(info));  /* Unroll. */
    FUNC2(decl, info & ~CTMASK_CID, size);  /* Copy type. */
    decl->stack[decl->pos].sib = 1;  /* Mark as already checked and sized. */
    /* Note: this is not copied to the ct->sib in the C type table. */
    break;
  case CT_FUNC:
    /* Copy type, link parameters (shared). */
    decl->stack[FUNC2(decl, info, size)].sib = ct->sib;
    break;
  default:
    /* Copy type, merge common qualifiers. */
    FUNC2(decl, info|(decl->attr & CTF_QUAL), size);
    decl->attr &= ~CTF_QUAL;
    break;
  }
}