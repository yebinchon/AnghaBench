#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* ptr; int len; } ;
typedef  TYPE_3__ xmlstr_t ;
struct TYPE_6__ {int nummethods; } ;
struct TYPE_7__ {TYPE_1__ ifaceps; } ;
struct entity {TYPE_2__ u; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 

__attribute__((used)) static BOOL FUNC2(const xmlstr_t *str, struct entity *entity)
{
    const WCHAR *curr;
    ULONG num = 0;

    for (curr = str->ptr; curr < str->ptr + str->len; curr++)
    {
        if (*curr >= '0' && *curr <= '9')
            num = num * 10 + *curr - '0';
        else
        {
            UNICODE_STRING strU = FUNC1(str);
            FUNC0("wrong numeric value %wZ\n", &strU);
            return FALSE;
        }
    }
    entity->u.ifaceps.nummethods = num;

    return TRUE;
}