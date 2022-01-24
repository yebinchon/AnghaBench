#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 scalar_t__ FC_BOGUS_STRUCT ; 
 scalar_t__ TYPE_STRUCT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const type_t *type)
{
    return (FUNC1(type) == TYPE_STRUCT &&
            FUNC0(type) != FC_BOGUS_STRUCT);
}