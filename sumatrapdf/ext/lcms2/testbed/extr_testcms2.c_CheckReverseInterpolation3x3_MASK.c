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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;
typedef  scalar_t__ cmsFloat32Number ;
typedef  int /*<<< orphan*/  Hint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FLOAT_PRECISSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(void)
{
 cmsPipeline* Lut;
 cmsStage* clut;
 cmsFloat32Number Target[4], Result[4], Hint[4];
 cmsFloat32Number err, max;
 cmsInt32Number i;
 cmsUInt16Number Table[] = {

        0,    0,   0,                 // 0 0 0
        0,    0,   0xffff,            // 0 0 1

        0,    0xffff,    0,           // 0 1 0
        0,    0xffff,    0xffff,      // 0 1 1

        0xffff,    0,    0,           // 1 0 0
        0xffff,    0,    0xffff,      // 1 0 1

        0xffff,    0xffff,   0,       // 1 1 0
        0xffff,    0xffff,   0xffff,  // 1 1 1
    };



   Lut = FUNC2(FUNC0(), 3, 3);

   clut = FUNC6(FUNC0(), 2, 3, 3, Table);
   FUNC5(FUNC0(), Lut, cmsAT_BEGIN, clut);

   Target[0] = 0; Target[1] = 0; Target[2] = 0;
   Hint[0] = 0; Hint[1] = 0; Hint[2] = 0;
   FUNC3(FUNC0(), Target, Result, NULL, Lut);
   if (Result[0] != 0 || Result[1] != 0 || Result[2] != 0){

       FUNC1("Reverse interpolation didn't find zero");
       goto Error;
   }

   // Transverse identity
   max = 0;
   for (i=0; i <= 100; i++) {

       cmsFloat32Number in = i / 100.0F;

       Target[0] = in; Target[1] = 0; Target[2] = 0;
       FUNC3(FUNC0(), Target, Result, Hint, Lut);

       err = FUNC7(in - Result[0]);
       if (err > max) max = err;

       FUNC8(Hint, Result, sizeof(Hint));
   }

    FUNC4(FUNC0(), Lut);
    return (max <= FLOAT_PRECISSION);

Error:
    FUNC4(FUNC0(), Lut);
    return 0;
}