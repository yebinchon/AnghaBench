#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int length; int /*<<< orphan*/  ptr; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/ * values; } ;
struct TYPE_9__ {TYPE_2__ string; TYPE_1__ array; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_3__ u; } ;
typedef  TYPE_4__ json_value ;

/* Variables and functions */
 scalar_t__ json_array ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ json_string ; 
 char* FUNC1 (char*,size_t) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static char *FUNC5(const json_value *arraynode)
{
    char *psz = NULL;
    if(arraynode->type != json_array || arraynode->u.array.length < 1)
        return psz;

    size_t i_total = 1;
    for(size_t i=0; i<arraynode->u.array.length; i++)
    {
        const json_value *name = FUNC0(arraynode->u.array.values[i], "name");
        if(name->type != json_string)
            continue;

        if(psz == NULL)
        {
            psz = FUNC3(name->u.string.ptr);
            i_total = name->u.string.length + 1;
        }
        else
        {
            char *p = FUNC1(psz, i_total + name->u.string.length + 2);
            if(p)
            {
                psz = p;
                psz = FUNC2(psz, ", ");
                psz = FUNC4(psz, name->u.string.ptr, name->u.string.length);
                i_total += name->u.string.length + 2;
            }
        }
    }

    return psz;
}