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
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_1__ typelib; } ;
struct entity {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  WORD ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LIBFLAG_FCONTROL ; 
 int /*<<< orphan*/  LIBFLAG_FHASDISKIMAGE ; 
 int /*<<< orphan*/  LIBFLAG_FHIDDEN ; 
 int /*<<< orphan*/  LIBFLAG_FRESTRICTED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  controlW ; 
 int /*<<< orphan*/  hasdiskimageW ; 
 int /*<<< orphan*/  hiddenW ; 
 int /*<<< orphan*/  restrictedW ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 

__attribute__((used)) static BOOL FUNC3(const xmlstr_t *value, struct entity *entity)
{
    WORD *flags = &entity->u.typelib.flags;
    const WCHAR *str = value->ptr, *start;
    int i = 0;

    *flags = 0;

    /* it's comma separated list of flags */
    while (i < value->len)
    {
        start = str;
        while (*str != ',' && (i++ < value->len)) str++;

        if (!FUNC1(start, restrictedW, str-start))
            *flags |= LIBFLAG_FRESTRICTED;
        else if (!FUNC1(start, controlW, str-start))
            *flags |= LIBFLAG_FCONTROL;
        else if (!FUNC1(start, hiddenW, str-start))
            *flags |= LIBFLAG_FHIDDEN;
        else if (!FUNC1(start, hasdiskimageW, str-start))
            *flags |= LIBFLAG_FHASDISKIMAGE;
        else
        {
            UNICODE_STRING valueU = FUNC2(value);
            FUNC0("unknown flags value %wZ\n", &valueU);
            return FALSE;
        }

        /* skip separator */
        str++;
        i++;
    }

    return TRUE;
}