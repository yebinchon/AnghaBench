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
struct _cmstransform_struct {int dummy; } ;
typedef  unsigned char cmsUInt8Number ;
typedef  struct _cmstransform_struct* cmsUInt32Number ;
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct _cmstransform_struct*) ; 

__attribute__((used)) static
unsigned char* FUNC2(cmsContext ContextID, struct _cmstransform_struct* CMMcargo,
                              register cmsUInt16Number wIn[],
                              register cmsUInt8Number* accum,
                              register cmsUInt32Number Stride )
{
    cmsUInt16Number* accum16 = (cmsUInt16Number*) accum;

    wIn[0] = (cmsUInt16Number) FUNC0(accum16[0]);
    wIn[1] = (cmsUInt16Number) FUNC0(((accum16[1] > 0x7f00) ? (accum16[1] - 0x8000) : (accum16[1] + 0x8000)) );
    wIn[2] = (cmsUInt16Number) FUNC0(((accum16[2] > 0x7f00) ? (accum16[2] - 0x8000) : (accum16[2] + 0x8000)) );

    return accum + 3 * sizeof(cmsUInt16Number);

    FUNC1(Stride);
    FUNC1(CMMcargo);
}