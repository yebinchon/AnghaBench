#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t typekind; int /*<<< orphan*/  cImplTypes; int /*<<< orphan*/  cVars; int /*<<< orphan*/  cFuncs; int /*<<< orphan*/  wTypeFlags; } ;
struct TYPE_6__ {TYPE_1__ typeattr; int /*<<< orphan*/  impltypes; int /*<<< orphan*/  vardescs; int /*<<< orphan*/  funcdescs; int /*<<< orphan*/  DllName; int /*<<< orphan*/  index; int /*<<< orphan*/  pTypeLib; int /*<<< orphan*/  guid; int /*<<< orphan*/  DocString; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ ITypeInfoImpl ;

/* Variables and functions */
 size_t TKIND_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__ const*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ole ; 
 int /*<<< orphan*/ * typekind_desc ; 

__attribute__((used)) static void FUNC9(const ITypeInfoImpl * pty)
{
    FUNC2("%p ref=%u\n", pty, pty->ref);
    FUNC2("%s %s\n", FUNC5(FUNC0(pty->Name)), FUNC5(FUNC0(pty->DocString)));
    FUNC2("attr:%s\n", FUNC4(FUNC1(pty->guid)));
    FUNC2("kind:%s\n", typekind_desc[pty->typeattr.typekind]);
    FUNC2("fct:%u var:%u impl:%u\n", pty->typeattr.cFuncs, pty->typeattr.cVars, pty->typeattr.cImplTypes);
    FUNC2("wTypeFlags: 0x%04x\n", pty->typeattr.wTypeFlags);
    FUNC2("parent tlb:%p index in TLB:%u\n",pty->pTypeLib, pty->index);
    if (pty->typeattr.typekind == TKIND_MODULE) FUNC2("dllname:%s\n", FUNC5(FUNC0(pty->DllName)));
    if (FUNC3(ole))
        FUNC6(pty->funcdescs, pty->typeattr.cFuncs);
    FUNC8(pty->vardescs, pty->typeattr.cVars);
    FUNC7(pty->impltypes, pty->typeattr.cImplTypes);
}