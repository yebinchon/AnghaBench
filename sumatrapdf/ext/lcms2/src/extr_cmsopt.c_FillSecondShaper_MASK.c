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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static
void FUNC4(cmsContext ContextID, cmsUInt16Number* Table, cmsToneCurve* Curve, cmsBool Is8BitsOutput)
{
    int i;
    cmsFloat32Number R, Val;

    for (i=0; i < 16385; i++) {

        R   = (cmsFloat32Number) (i / 16384.0);
        Val = FUNC3(ContextID, Curve, R);    // Val comes 0..1.0

        if (Val < 0)
            Val = 0;

        if (Val > 1.0)
            Val = 1.0;

        if (Is8BitsOutput) {

            // If 8 bits output, we can optimize further by computing the / 257 part.
            // first we compute the resulting byte and then we store the byte times
            // 257. This quantization allows to round very quick by doing a >> 8, but
            // since the low byte is always equal to msb, we can do a & 0xff and this works!
            cmsUInt16Number w = FUNC2(Val * 65535.0);
            cmsUInt8Number  b = FUNC0(w);

            Table[i] = FUNC1(b);
        }
        else Table[i]  = FUNC2(Val * 65535.0);
    }
}