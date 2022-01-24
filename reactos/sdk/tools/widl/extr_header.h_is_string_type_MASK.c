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
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline int FUNC4(const attr_list_t *attrs, const type_t *type)
{
    return ((FUNC1(attrs, ATTR_STRING) || FUNC0(type, ATTR_STRING))
            && (FUNC3(type) || FUNC2(type)));
}