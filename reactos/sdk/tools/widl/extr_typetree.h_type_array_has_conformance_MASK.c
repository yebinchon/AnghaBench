#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * size_is; } ;
struct TYPE_9__ {TYPE_1__ array; } ;
struct TYPE_10__ {TYPE_2__ details; } ;
typedef  TYPE_3__ type_t ;

/* Variables and functions */
 scalar_t__ TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_3__ const*) ; 
 scalar_t__ FUNC2 (TYPE_3__ const*) ; 

__attribute__((used)) static inline int FUNC3(const type_t *type)
{
    type = FUNC1(type);
    FUNC0(FUNC2(type) == TYPE_ARRAY);
    return (type->details.array.size_is != NULL);
}