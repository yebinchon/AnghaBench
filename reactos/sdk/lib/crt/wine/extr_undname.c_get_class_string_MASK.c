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
struct array {int num; int /*<<< orphan*/ * elts; } ;
struct parsed_symbol {struct array stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct parsed_symbol*,unsigned int) ; 

__attribute__((used)) static char* FUNC4(struct parsed_symbol* sym, int start)
{
    int          i;
    unsigned int len, sz;
    char*        ret;
    struct array *a = &sym->stack;

    for (len = 0, i = start; i < a->num; i++)
    {
        FUNC0(a->elts[i]);
        len += 2 + FUNC2(a->elts[i]);
    }
    if (!(ret = FUNC3(sym, len - 1))) return NULL;
    for (len = 0, i = a->num - 1; i >= start; i--)
    {
        sz = FUNC2(a->elts[i]);
        FUNC1(ret + len, a->elts[i], sz);
        len += sz;
        if (i > start)
        {
            ret[len++] = ':';
            ret[len++] = ':';
        }
    }
    ret[len] = '\0';
    return ret;
}