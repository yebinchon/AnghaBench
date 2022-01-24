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

/* Variables and functions */
 char* FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 
 float FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(const char *psz_rdf, float *out, const char *psz_var)
{
    char *p_start = FUNC0(psz_rdf, psz_var);
    if (p_start == NULL)
        return false;

    size_t varlen = FUNC2(psz_var);
    p_start += varlen;
    char *p_end = NULL;
    /* XML style */
    if (p_start[0] == '>')
    {
        p_start += 1;
        p_end = FUNC1(p_start, '<');
    }
    else if (p_start[0] == '=' && p_start[1] == '"')
    {
        p_start += 2;
        p_end = FUNC1(p_start, '"');
    }
    if (FUNC3(p_end == NULL || p_end == p_start + 1))
        return false;

    *out = FUNC4(p_start, NULL);
    return true;
}