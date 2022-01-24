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
struct PropertyClosure {int /*<<< orphan*/  hr; int /*<<< orphan*/  sectionOffset; int /*<<< orphan*/  propNum; } ;
typedef  int /*<<< orphan*/  PropertyStorage_impl ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static BOOL FUNC4(const void *key, const void *value,
 void *extra, void *closure)
{
    PropertyStorage_impl *This = extra;
    struct PropertyClosure *c = closure;

    FUNC3(key);
    FUNC3(value);
    FUNC3(extra);
    FUNC3(closure);
    c->hr = FUNC0(This, c->propNum++,
                                                  FUNC1(key), value, c->sectionOffset);
    return FUNC2(c->hr);
}