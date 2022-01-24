#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  attr; } ;
struct TYPE_6__ {char tok; } ;
typedef  int CTSize ;
typedef  TYPE_1__ CPState ;
typedef  TYPE_2__ CPDecl ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN ; 
 int /*<<< orphan*/  CTFP_ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(CPState *cp, CPDecl *decl)
{
  CTSize al = 4;  /* Unspecified alignment is 16 bytes. */
  if (cp->tok == '(') {
    al = FUNC1(cp);
    al = al ? FUNC2(al) : 0;
  }
  FUNC0(decl->attr, ALIGN, al);
  decl->attr |= CTFP_ALIGNED;
}