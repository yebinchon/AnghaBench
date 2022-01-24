#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int needsp; int /*<<< orphan*/  cts; } ;
struct TYPE_16__ {int info; int size; } ;
struct TYPE_15__ {int size; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int CTSize ;
typedef  TYPE_2__ CTRepr ;
typedef  int CTInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_QUAL ; 
 int CTF_BOOL ; 
 int CTF_COMPLEX ; 
 int CTF_FP ; 
 int CTF_REF ; 
 int CTF_UCHAR ; 
 int CTF_UNION ; 
 int CTF_UNSIGNED ; 
 int CTF_VLA ; 
 int /*<<< orphan*/  CTID_CTYPEID ; 
 int CTSIZE_INVALID ; 
#define  CT_ARRAY 135 
#define  CT_ATTRIB 134 
#define  CT_ENUM 133 
#define  CT_FUNC 132 
#define  CT_NUM 131 
#define  CT_PTR 130 
#define  CT_STRUCT 129 
#define  CT_VOID 128 
 int /*<<< orphan*/  LJ_64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_11__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int,char*) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(CTRepr *ctr, CTypeID id)
{
  CType *ct = FUNC5(ctr->cts, id);
  CTInfo qual = 0;
  int ptrto = 0;
  for (;;) {
    CTInfo info = ct->info;
    CTSize size = ct->size;
    switch (FUNC12(info)) {
    case CT_NUM:
      if ((info & CTF_BOOL)) {
	FUNC8(ctr, "bool");
      } else if ((info & CTF_FP)) {
	if (size == sizeof(double)) FUNC8(ctr, "double");
	else if (size == sizeof(float)) FUNC8(ctr, "float");
	else FUNC8(ctr, "long double");
      } else if (size == 1) {
	if (!((info ^ CTF_UCHAR) & CTF_UNSIGNED)) FUNC8(ctr, "char");
	else if (CTF_UCHAR) FUNC8(ctr, "signed char");
	else FUNC8(ctr, "unsigned char");
      } else if (size < 8) {
	if (size == 4) FUNC8(ctr, "int");
	else FUNC8(ctr, "short");
	if ((info & CTF_UNSIGNED)) FUNC8(ctr, "unsigned");
      } else {
	FUNC8(ctr, "_t");
	FUNC9(ctr, size*8);
	FUNC8(ctr, "int");
	if ((info & CTF_UNSIGNED)) FUNC7(ctr, 'u');
      }
      FUNC10(ctr, (qual|info));
      return;
    case CT_VOID:
      FUNC8(ctr, "void");
      FUNC10(ctr, (qual|info));
      return;
    case CT_STRUCT:
      FUNC11(ctr, ct, qual, (info & CTF_UNION) ? "union" : "struct");
      return;
    case CT_ENUM:
      if (id == CTID_CTYPEID) {
	FUNC8(ctr, "ctype");
	return;
      }
      FUNC11(ctr, ct, qual, "enum");
      return;
    case CT_ATTRIB:
      if (FUNC2(info) == CTA_QUAL) qual |= size;
      break;
    case CT_PTR:
      if ((info & CTF_REF)) {
	FUNC7(ctr, '&');
      } else {
	FUNC10(ctr, (qual|info));
	if (LJ_64 && size == 4) FUNC8(ctr, "__ptr32");
	FUNC7(ctr, '*');
      }
      qual = 0;
      ptrto = 1;
      ctr->needsp = 1;
      break;
    case CT_ARRAY:
      if (FUNC6(info)) {
	ctr->needsp = 1;
	if (ptrto) { ptrto = 0; FUNC7(ctr, '('); FUNC0(ctr, ')'); }
	FUNC0(ctr, '[');
	if (size != CTSIZE_INVALID) {
	  CTSize csize = FUNC3(ctr->cts, ct)->size;
	  FUNC1(ctr, csize ? size/csize : 0);
	} else if ((info & CTF_VLA)) {
	  FUNC0(ctr, '?');
	}
	FUNC0(ctr, ']');
      } else if ((info & CTF_COMPLEX)) {
	if (size == 2*sizeof(float)) FUNC8(ctr, "float");
	FUNC8(ctr, "complex");
	return;
      } else {
	FUNC8(ctr, ")))");
	FUNC9(ctr, size);
	FUNC8(ctr, "__attribute__((vector_size(");
      }
      break;
    case CT_FUNC:
      ctr->needsp = 1;
      if (ptrto) { ptrto = 0; FUNC7(ctr, '('); FUNC0(ctr, ')'); }
      FUNC0(ctr, '(');
      FUNC0(ctr, ')');
      break;
    default:
      FUNC13(0);
      break;
    }
    ct = FUNC5(ctr->cts, FUNC4(info));
  }
}