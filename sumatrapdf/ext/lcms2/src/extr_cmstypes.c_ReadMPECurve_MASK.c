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
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

__attribute__((used)) static
cmsBool FUNC2(cmsContext ContextID, struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     void* Cargo,
                     cmsUInt32Number n,
                     cmsUInt32Number SizeOfTag)
{
      cmsToneCurve** GammaTables = ( cmsToneCurve**) Cargo;

      GammaTables[n] = FUNC0(ContextID, self, io);
      return (GammaTables[n] != NULL);

      FUNC1(SizeOfTag);
}