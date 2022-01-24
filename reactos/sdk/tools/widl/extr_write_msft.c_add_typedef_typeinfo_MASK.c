#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int typelib_idx; int /*<<< orphan*/  attrs; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ type_t ;
struct TYPE_16__ {int nrtypeinfos; } ;
struct TYPE_19__ {TYPE_1__ typelib_header; } ;
typedef  TYPE_4__ msft_typelib_t ;
struct TYPE_20__ {TYPE_2__* typeinfo; } ;
typedef  TYPE_5__ msft_typeinfo_t ;
struct TYPE_17__ {int datatype1; unsigned int size; int datatype2; unsigned int typekind; } ;

/* Variables and functions */
 int /*<<< orphan*/  TKIND_ALIAS ; 
 TYPE_5__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 unsigned int FUNC5 (TYPE_3__*,unsigned int*) ; 

__attribute__((used)) static void FUNC6(msft_typelib_t *typelib, type_t *tdef)
{
    msft_typeinfo_t *msft_typeinfo = NULL;
    int datatype1, datatype2, duplicate = 0;
    unsigned int size, alignment = 0;
    type_t *type;

    if (-1 < tdef->typelib_idx)
        return;

    type = FUNC4(tdef);

    if (!type->name || FUNC3(tdef->name, type->name) != 0)
    {
        tdef->typelib_idx = typelib->typelib_header.nrtypeinfos;
        msft_typeinfo = FUNC0(typelib, TKIND_ALIAS, tdef->name, tdef->attrs);
    }
    else
        duplicate = 1;

    FUNC1(typelib, FUNC2(type), type, &datatype1, &datatype2);
    size = FUNC5(type, &alignment);

    if (msft_typeinfo)
    {
        msft_typeinfo->typeinfo->datatype1 = datatype1;
        msft_typeinfo->typeinfo->size = size;
        msft_typeinfo->typeinfo->datatype2 = datatype2;
        msft_typeinfo->typeinfo->typekind |= (alignment << 11 | alignment << 6);
    }

    /* avoid adding duplicate type definitions */
    if (duplicate)
        tdef->typelib_idx = type->typelib_idx;
}