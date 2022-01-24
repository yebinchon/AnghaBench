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
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC12(void)
{
 cmsPipeline* Lut;
 cmsStage* clut;
 cmsFloat32Number Target[4], Result[4], Hint[4];
 cmsFloat32Number err, max;
 cmsInt32Number i;

 // 4 -> 3, output gets 3 first channels copied
 cmsUInt16Number Table[] = {

        0,         0,         0,          //  0 0 0 0   = ( 0, 0, 0)
        0,         0,         0,          //  0 0 0 1   = ( 0, 0, 0)

        0,         0,         0xffff,     //  0 0 1 0   = ( 0, 0, 1)
        0,         0,         0xffff,     //  0 0 1 1   = ( 0, 0, 1)

        0,         0xffff,    0,          //  0 1 0 0   = ( 0, 1, 0)
        0,         0xffff,    0,          //  0 1 0 1   = ( 0, 1, 0)

        0,         0xffff,    0xffff,     //  0 1 1 0    = ( 0, 1, 1)
        0,         0xffff,    0xffff,     //  0 1 1 1    = ( 0, 1, 1)

        0xffff,    0,         0,          //  1 0 0 0    = ( 1, 0, 0)
        0xffff,    0,         0,          //  1 0 0 1    = ( 1, 0, 0)

        0xffff,    0,         0xffff,     //  1 0 1 0    = ( 1, 0, 1)
        0xffff,    0,         0xffff,     //  1 0 1 1    = ( 1, 0, 1)

        0xffff,    0xffff,    0,          //  1 1 0 0    = ( 1, 1, 0)
        0xffff,    0xffff,    0,          //  1 1 0 1    = ( 1, 1, 0)

        0xffff,    0xffff,    0xffff,     //  1 1 1 0    = ( 1, 1, 1)
        0xffff,    0xffff,    0xffff,     //  1 1 1 1    = ( 1, 1, 1)
    };


   Lut = FUNC4(FUNC0(), 4, 3);

   clut = FUNC9(FUNC0(), 2, 4, 3, Table);
   FUNC8(FUNC0(), Lut, cmsAT_BEGIN, clut);

   // Check if the LUT is behaving as expected
   FUNC3("4->3 feasibility");
   for (i=0; i <= 100; i++) {

       Target[0] = i / 100.0F;
       Target[1] = Target[0];
       Target[2] = 0;
       Target[3] = 12;

       FUNC5(FUNC0(), Target, Result, Lut);

       if (!FUNC2("0", Target[0], Result[0])) goto Error;
       if (!FUNC2("1", Target[1], Result[1])) goto Error;
       if (!FUNC2("2", Target[2], Result[2])) goto Error;
   }

   FUNC3("4->3 zero");
   Target[0] = 0;
   Target[1] = 0;
   Target[2] = 0;

   // This one holds the fixed K
   Target[3] = 0;

   // This is our hint (which is a big lie in this case)
   Hint[0] = 0.1F; Hint[1] = 0.1F; Hint[2] = 0.1F;

   FUNC6(FUNC0(), Target, Result, Hint, Lut);

   if (Result[0] != 0 || Result[1] != 0 || Result[2] != 0 || Result[3] != 0){

       FUNC1("Reverse interpolation didn't find zero");
       goto Error;
   }

   FUNC3("4->3 find CMY");
   max = 0;
   for (i=0; i <= 100; i++) {

       cmsFloat32Number in = i / 100.0F;

       Target[0] = in; Target[1] = 0; Target[2] = 0;
       FUNC6(FUNC0(), Target, Result, Hint, Lut);

       err = FUNC10(in - Result[0]);
       if (err > max) max = err;

       FUNC11(Hint, Result, sizeof(Hint));
   }

    FUNC7(FUNC0(), Lut);
    return (max <= FLOAT_PRECISSION);

Error:
    FUNC7(FUNC0(), Lut);
    return 0;
}