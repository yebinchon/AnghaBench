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
struct TYPE_7__ {char tok; } ;
typedef  int /*<<< orphan*/  CTSize ;
typedef  int /*<<< orphan*/  CTInfo ;
typedef  TYPE_1__ CPState ;
typedef  int /*<<< orphan*/  CPDecl ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_VLA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTSIZE_INVALID ; 
 int /*<<< orphan*/  CT_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char) ; 

__attribute__((used)) static void FUNC6(CPState *cp, CPDecl *decl)
{
  CTInfo info = FUNC0(CT_ARRAY, 0);
  CTSize nelem = CTSIZE_INVALID;  /* Default size for a[] or a[?]. */
  FUNC3(cp, decl);
  if (FUNC5(cp, '?'))
    info |= CTF_VLA;  /* Create variable-length array a[?]. */
  else if (cp->tok != ']')
    nelem = FUNC4(cp);
  FUNC2(cp, ']');
  FUNC1(decl, info, nelem);
}