#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  Desc; void* Ucr; void* Bg; } ;
typedef  TYPE_1__ cmsUcrBg ;
typedef  struct _cms_typehandler_struct* cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void* FUNC4(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsUcrBg* Src = (cmsUcrBg*) Ptr;
    cmsUcrBg* NewUcrBg = (cmsUcrBg*) FUNC0(ContextID, sizeof(cmsUcrBg));
    FUNC3(self);

    if (NewUcrBg == NULL) return NULL;

    NewUcrBg ->Bg   = FUNC1(ContextID, Src ->Bg);
    NewUcrBg ->Ucr  = FUNC1(ContextID, Src ->Ucr);
    NewUcrBg ->Desc = FUNC2(ContextID, Src ->Desc);

    return (void*) NewUcrBg;

    FUNC3(n);
}