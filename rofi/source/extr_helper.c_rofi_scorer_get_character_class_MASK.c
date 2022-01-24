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
typedef  int /*<<< orphan*/  gunichar ;
typedef  enum CharClass { ____Placeholder_CharClass } CharClass ;

/* Variables and functions */
 int DIGIT ; 
 int LOWER ; 
 int NON_WORD ; 
 int UPPER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum CharClass FUNC3 ( gunichar c )
{
    if ( FUNC1 ( c ) ) {
        return LOWER;
    }
    if ( FUNC2 ( c ) ) {
        return UPPER;
    }
    if ( FUNC0 ( c ) ) {
        return DIGIT;
    }
    return NON_WORD;
}