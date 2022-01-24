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
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int INT ;

/* Variables and functions */
#define  COND_ILHS 133 
#define  COND_IRHS 132 
#define  COND_ISS 131 
#define  COND_LHS 130 
#define  COND_RHS 129 
#define  COND_SS 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT FUNC9( LPCWSTR a, INT operator, LPCWSTR b )
{
    int lhs, rhs;

    /* substring operators return 0 if LHS is missing */
    if (!a || !*a)
        return 0;

    /* substring operators return 1 if RHS is missing */
    if (!b || !*b)
        return 1;

    /* if both strings contain only numbers, use integer comparison */
    lhs = FUNC1(a);
    rhs = FUNC1(b);
    if (FUNC3(a) && FUNC3(b))
        return FUNC2( lhs, operator, rhs );

    switch (operator)
    {
    case COND_SS:
        return FUNC7( a, b ) != 0;
    case COND_ISS:
        return FUNC8( a, b ) != 0;
    case COND_LHS:
    {
        int l = FUNC4( a );
        int r = FUNC4( b );
        if (r > l) return 0;
        return !FUNC5( a, b, r );
    }
    case COND_RHS:
    {
        int l = FUNC4( a );
        int r = FUNC4( b );
        if (r > l) return 0;
        return !FUNC5( a + (l - r), b, r );
    }
    case COND_ILHS:
    {
        int l = FUNC4( a );
        int r = FUNC4( b );
        if (r > l) return 0;
        return !FUNC6( a, b, r );
    }
    case COND_IRHS:
    {
        int l = FUNC4( a );
        int r = FUNC4( b );
        if (r > l) return 0;
        return !FUNC6( a + (l - r), b, r );
    }
    default:
        FUNC0("invalid substring operator\n");
        return 0;
    }
    return 0;
}