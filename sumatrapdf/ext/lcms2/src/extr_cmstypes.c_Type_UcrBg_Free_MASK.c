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
struct TYPE_2__ {scalar_t__ Desc; scalar_t__ Bg; scalar_t__ Ucr; } ;
typedef  TYPE_1__ cmsUcrBg ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void FUNC4(cmsContext ContextID, struct _cms_typehandler_struct* self, void *Ptr)
{
   cmsUcrBg* Src = (cmsUcrBg*) Ptr;
   FUNC3(self);

   if (Src ->Ucr) FUNC1(ContextID, Src ->Ucr);
   if (Src ->Bg)  FUNC1(ContextID, Src ->Bg);
   if (Src ->Desc) FUNC2(ContextID, Src ->Desc);

   FUNC0(ContextID, Ptr);
}