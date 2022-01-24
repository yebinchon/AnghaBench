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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

cmsInt32Number FUNC6(void)
{
     cmsContext c1, c2, c3, c4;

     c1 = FUNC3(NULL, NULL);                 // This creates a context by using the normal malloc
     FUNC0(c1);
     FUNC4(c1);

     c2 = FUNC3(FUNC2(), NULL);   // This creates a context by using the debug malloc
     FUNC0(c2);
     FUNC4(c2);

     c1 = FUNC3(NULL, NULL);
     FUNC0(c1);

     c2 = FUNC3(FUNC2(), NULL);
     FUNC0(c2);

     FUNC5(c1, FUNC2()); // Now the context have custom allocators

     c3 = FUNC1(c1, NULL);
     c4 = FUNC1(c2, NULL);

     FUNC4(c1);  // Should be deleted by using nomal malloc
     FUNC4(c2);  // Should be deleted by using debug malloc
     FUNC4(c3);  // Should be deleted by using nomal malloc
     FUNC4(c4);  // Should be deleted by using debug malloc

     return 1;
}