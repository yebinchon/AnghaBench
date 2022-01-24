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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(void)
{
    int i, j;


    for (i=0; i < 0xffff; i++) {

        cmsFloat32Number f = FUNC2((cmsUInt16Number) i);

        if (!FUNC3(f))  {

            j = FUNC1(f);

            if (i != j) {
                FUNC0("%d != %d in Half float support!\n", i, j);
                return 0;
            }
        }
    }

    return 1;
}