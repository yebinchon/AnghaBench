#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsVEC3 ;
struct TYPE_7__ {int /*<<< orphan*/ * v; } ;
typedef  TYPE_1__ cmsMAT3 ;
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_8__ {int X; int Y; int Z; } ;
typedef  TYPE_2__ cmsCIEXYZ ;
struct TYPE_9__ {int X; int Y; int Z; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, const cmsCIEXYZ* BlackPointIn,
                                   const cmsCIEXYZ* BlackPointOut,
                                   cmsMAT3* m, cmsVEC3* off)
{
  cmsFloat64Number ax, ay, az, bx, by, bz, tx, ty, tz;

   // Now we need to compute a matrix plus an offset m and of such of
   // [m]*bpin + off = bpout
   // [m]*D50  + off = D50
   //
   // This is a linear scaling in the form ax+b, where
   // a = (bpout - D50) / (bpin - D50)
   // b = - D50* (bpout - bpin) / (bpin - D50)

   tx = BlackPointIn->X - FUNC1(ContextID)->X;
   ty = BlackPointIn->Y - FUNC1(ContextID)->Y;
   tz = BlackPointIn->Z - FUNC1(ContextID)->Z;

   ax = (BlackPointOut->X - FUNC1(ContextID)->X) / tx;
   ay = (BlackPointOut->Y - FUNC1(ContextID)->Y) / ty;
   az = (BlackPointOut->Z - FUNC1(ContextID)->Z) / tz;

   bx = - FUNC1(ContextID)-> X * (BlackPointOut->X - BlackPointIn->X) / tx;
   by = - FUNC1(ContextID)-> Y * (BlackPointOut->Y - BlackPointIn->Y) / ty;
   bz = - FUNC1(ContextID)-> Z * (BlackPointOut->Z - BlackPointIn->Z) / tz;

   FUNC0(ContextID, &m ->v[0], ax, 0,  0);
   FUNC0(ContextID, &m ->v[1], 0, ay,  0);
   FUNC0(ContextID, &m ->v[2], 0,  0,  az);
   FUNC0(ContextID, off, bx, by, bz);

}