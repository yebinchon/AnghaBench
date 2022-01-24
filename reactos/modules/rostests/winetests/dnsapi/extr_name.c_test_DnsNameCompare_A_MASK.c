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
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2( void )
{
    static const CHAR empty[]          = "",
                      dot[]            = ".",
                      dotdot[]         = "..",
                      A[]              = "A",
                      a[]              = "a",
                      B[]              = "B",
                      b[]              = "b",
                      A_dot_B[]        = "A.B",
                      a_dot_a[]        = "a.a",
                      a_dot_b[]        = "a.b",
                      a_dot_b_dot[]    = "a.b.",
                      a_dot_b_dotdot[] = "a.b..",
                      B_dot_A[]        = "B.A",
                      b_dot_a[]        = "b.a",
                      b_dot_a_dot[]    = "b.a.",
                      b_dot_a_dotdot[] = "b.a..";

    FUNC1( FUNC0( NULL, NULL ) == TRUE, "failed unexpectedly\n" );

    FUNC1( FUNC0( empty, empty ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( dot, empty ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( empty, dot ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( dot, dotdot ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( dotdot, dot ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a, a ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a, A ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( A, a ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b, A_dot_B ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b, a_dot_b ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dot, a_dot_b_dot ) == TRUE, "failed unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dotdot, a_dot_b_dotdot ) == TRUE, "failed unexpectedly\n" );

    FUNC1( FUNC0( empty, NULL ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( NULL, empty ) == FALSE, "succeeded unexpectedly\n" );

    FUNC1( FUNC0( a, b ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a, B ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( A, b ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b, B_dot_A ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dot, b_dot_a_dot ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b, a_dot_a ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dotdot, b_dot_a_dotdot ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dot, b_dot_a_dotdot ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dotdot, b_dot_a_dot ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b_dot, b_dot_a ) == FALSE, "succeeded unexpectedly\n" );
    FUNC1( FUNC0( a_dot_b, b_dot_a_dot ) == FALSE, "succeeded unexpectedly\n" );
}