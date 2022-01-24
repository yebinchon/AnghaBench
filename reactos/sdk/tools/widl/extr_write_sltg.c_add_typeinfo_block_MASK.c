#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
struct sltg_typelib {int dummy; } ;
struct TYPE_6__ {int cval; } ;
typedef  TYPE_2__ expr_t ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ GUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_HELPCONTEXT ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  FUNC0 (struct sltg_typelib*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sltg_typelib*,void*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 short FUNC5 (char const*) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static const char *FUNC7(struct sltg_typelib *typelib, const type_t *type, int kind)
{
    const char *index_name, *other_name;
    void *block;
    short *p;
    int size, helpcontext = 0;
    GUID guid = { 0 };
    const expr_t *expr;

    index_name = FUNC2();
    other_name = FUNC2();

    expr = FUNC1(type->attrs, ATTR_HELPCONTEXT);
    if (expr) helpcontext = expr->cval;

    p = FUNC1(type->attrs, ATTR_UUID);
    if (p) guid = *(GUID *)p;

    size = sizeof(short) * 8 + 10 /* index_name */ * 2 + sizeof(int) + sizeof(GUID);

    block = FUNC6(size);
    p = block;
    *p++ = FUNC5(index_name);
    FUNC4((char *)p, index_name);
    p = (short *)((char *)p + FUNC5(index_name));
    *p++ = FUNC5(other_name);
    FUNC4((char *)p, other_name);
    p = (short *)((char *)p + FUNC5(other_name));
    *p++ = -1; /* res1a */
    *p++ = FUNC0(typelib, type->name); /* name offset */
    *p++ = 0; /* FIXME: helpstring */
    *p++ = -1; /* res20 */
    *(int *)p = helpcontext;
    p += 2;
    *p++ = -1; /* res26 */
    *(GUID *)p = guid;
    p += sizeof(GUID)/2;
    *p = kind;

    FUNC3(typelib, block, size, index_name);

    return index_name;
}