#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pStubDesc; } ;
struct TYPE_6__ {int Version; int /*<<< orphan*/  aUserMarshalQuadruple; int /*<<< orphan*/  pfnFree; int /*<<< orphan*/  pfnAllocate; } ;
struct TYPE_5__ {int /*<<< orphan*/  aUserMarshalQuadruple; } ;
typedef  TYPE_2__ MIDL_STUB_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  NdrOleAllocate ; 
 int /*<<< orphan*/  NdrOleFree ; 
 TYPE_4__* FUNC0 () ; 

__attribute__((used)) static void FUNC1(MIDL_STUB_DESC *desc)
{
    desc->pfnAllocate = NdrOleAllocate;
    desc->pfnFree = NdrOleFree;
    desc->Version = 0x50002;
    desc->aUserMarshalQuadruple = FUNC0()->pStubDesc->aUserMarshalQuadruple;
    /* type format string is initialized with proc format string and offset table */
}