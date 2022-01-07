
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int typelib_idx; int attrs; int name; } ;
typedef TYPE_3__ type_t ;
struct TYPE_16__ {int nrtypeinfos; } ;
struct TYPE_19__ {TYPE_1__ typelib_header; } ;
typedef TYPE_4__ msft_typelib_t ;
struct TYPE_20__ {TYPE_2__* typeinfo; } ;
typedef TYPE_5__ msft_typeinfo_t ;
struct TYPE_17__ {int datatype1; unsigned int size; int datatype2; unsigned int typekind; } ;


 int TKIND_ALIAS ;
 TYPE_5__* create_msft_typeinfo (TYPE_4__*,int ,int ,int ) ;
 int encode_type (TYPE_4__*,int ,TYPE_3__*,int*,int*) ;
 int get_type_vt (TYPE_3__*) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_3__* type_alias_get_aliasee (TYPE_3__*) ;
 unsigned int type_memsize_and_alignment (TYPE_3__*,unsigned int*) ;

__attribute__((used)) static void add_typedef_typeinfo(msft_typelib_t *typelib, type_t *tdef)
{
    msft_typeinfo_t *msft_typeinfo = ((void*)0);
    int datatype1, datatype2, duplicate = 0;
    unsigned int size, alignment = 0;
    type_t *type;

    if (-1 < tdef->typelib_idx)
        return;

    type = type_alias_get_aliasee(tdef);

    if (!type->name || strcmp(tdef->name, type->name) != 0)
    {
        tdef->typelib_idx = typelib->typelib_header.nrtypeinfos;
        msft_typeinfo = create_msft_typeinfo(typelib, TKIND_ALIAS, tdef->name, tdef->attrs);
    }
    else
        duplicate = 1;

    encode_type(typelib, get_type_vt(type), type, &datatype1, &datatype2);
    size = type_memsize_and_alignment(type, &alignment);

    if (msft_typeinfo)
    {
        msft_typeinfo->typeinfo->datatype1 = datatype1;
        msft_typeinfo->typeinfo->size = size;
        msft_typeinfo->typeinfo->datatype2 = datatype2;
        msft_typeinfo->typeinfo->typekind |= (alignment << 11 | alignment << 6);
    }


    if (duplicate)
        tdef->typelib_idx = type->typelib_idx;
}
