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
typedef  scalar_t__ LPCWSTR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
#define  COND_EQ 139 
#define  COND_GE 138 
#define  COND_GT 137 
#define  COND_IEQ 136 
#define  COND_IGE 135 
#define  COND_IGT 134 
#define  COND_ILE 133 
#define  COND_ILT 132 
#define  COND_INE 131 
#define  COND_LE 130 
#define  COND_LT 129 
#define  COND_NE 128 
 int COND_RHS ; 
 int COND_SS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ szEmpty ; 

__attribute__((used)) static INT FUNC7( LPCWSTR a, INT operator, LPCWSTR b, BOOL convert )
{
    if (operator >= COND_SS && operator <= COND_RHS)
        return FUNC3( a, operator, b );

    /* null and empty string are equivalent */
    if (!a) a = szEmpty;
    if (!b) b = szEmpty;

    if (convert && FUNC4(a) && FUNC4(b))
        return FUNC2( FUNC1(a), operator, FUNC1(b) );

    /* a or b may be NULL */
    switch (operator)
    {
    case COND_LT:
        return FUNC5( a, b ) < 0;
    case COND_GT:
        return FUNC5( a, b ) > 0;
    case COND_EQ:
        return FUNC5( a, b ) == 0;
    case COND_NE:
        return FUNC5( a, b ) != 0;
    case COND_GE:
        return FUNC5( a, b ) >= 0;
    case COND_LE:
        return FUNC5( a, b ) <= 0;
    case COND_ILT:
        return FUNC6( a, b ) < 0;
    case COND_IGT:
        return FUNC6( a, b ) > 0;
    case COND_IEQ:
        return FUNC6( a, b ) == 0;
    case COND_INE:
        return FUNC6( a, b ) != 0;
    case COND_IGE:
        return FUNC6( a, b ) >= 0;
    case COND_ILE:
        return FUNC6( a, b ) <= 0;
    default:
        FUNC0("invalid string operator\n");
        return 0;
    }
    return 0;
}