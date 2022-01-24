#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* elem; } ;
struct TYPE_12__ {TYPE_4__* ref; } ;
struct TYPE_14__ {TYPE_2__ array; TYPE_1__ pointer; } ;
struct TYPE_15__ {TYPE_3__ details; } ;
typedef  TYPE_4__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static type_t *FUNC4(type_t *chain, type_t *type)
{
    type_t *chain_type;

    if (!chain)
        return type;
    for (chain_type = chain; FUNC1(chain_type); chain_type = FUNC1(chain_type))
        ;

    if (FUNC3(chain_type))
        chain_type->details.pointer.ref = type;
    else if (FUNC2(chain_type))
        chain_type->details.array.elem = type;
    else
        FUNC0(0);

    return chain;
}