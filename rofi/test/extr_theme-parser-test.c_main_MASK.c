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
typedef  int /*<<< orphan*/  Suite ;
typedef  int /*<<< orphan*/  SRunner ;

/* Variables and functions */
 int /*<<< orphan*/  CK_NORMAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC7 () ; 

int FUNC8 ( int argc, char ** argv )
{
    FUNC0 ( argc, argv );

    if ( FUNC2 ( LC_ALL, "C" ) == NULL ) {
        FUNC1 ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }


    Suite *s;
    SRunner *sr;

    s = FUNC7();
    sr = FUNC3(s);

    FUNC6(sr, CK_NORMAL);
    int number_failed = FUNC5(sr);
    FUNC4(sr);

    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}