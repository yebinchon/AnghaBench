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
typedef  scalar_t__ (* lexical_function ) (int /*<<< orphan*/  const) ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ lex_Halant ; 
 scalar_t__ lex_Nukta ; 

__attribute__((used)) static int FUNC2(const WCHAR *input, unsigned int cChar,
        unsigned int start, unsigned int next, lexical_function lex)
{
    if (!FUNC0( lex(input[next]) )) return -1;
    next++;
    if ((next < cChar) && lex(input[next]) == lex_Nukta)
            next++;
    if ((next < cChar) && lex(input[next])==lex_Halant)
    {
        next++;
        if((next < cChar) && FUNC1( lex(input[next]) ))
            next++;
        if ((next < cChar) && FUNC0( lex(input[next]) ))
            return next;
    }
    else if ((next < cChar) && FUNC1( lex(input[next]) ) && lex(input[next+1])==lex_Halant)
    {
        next+=2;
        if ((next < cChar) && FUNC0( lex(input[next]) ))
            return next;
    }
    return -1;
}