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
struct _cms_typehandler_struct {int dummy; } ;
typedef  struct _cms_typehandler_struct* cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsSEQ ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void* FUNC2(cmsContext ContextID, struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    return (void*) FUNC0(ContextID, (cmsSEQ*) Ptr);

    FUNC1(n);
    FUNC1(self);
}