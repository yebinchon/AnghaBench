
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; int attrs; } ;
typedef TYPE_1__ type_t ;
struct sltg_typelib {int dummy; } ;
struct TYPE_6__ {int cval; } ;
typedef TYPE_2__ expr_t ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_3__ GUID ;


 int ATTR_HELPCONTEXT ;
 int ATTR_UUID ;
 int add_name (struct sltg_typelib*,int ) ;
 void* get_attrp (int ,int ) ;
 char* new_index_name () ;
 int sltg_add_typeinfo (struct sltg_typelib*,void*,int,char const*) ;
 int strcpy (char*,char const*) ;
 short strlen (char const*) ;
 void* xmalloc (int) ;

__attribute__((used)) static const char *add_typeinfo_block(struct sltg_typelib *typelib, const type_t *type, int kind)
{
    const char *index_name, *other_name;
    void *block;
    short *p;
    int size, helpcontext = 0;
    GUID guid = { 0 };
    const expr_t *expr;

    index_name = new_index_name();
    other_name = new_index_name();

    expr = get_attrp(type->attrs, ATTR_HELPCONTEXT);
    if (expr) helpcontext = expr->cval;

    p = get_attrp(type->attrs, ATTR_UUID);
    if (p) guid = *(GUID *)p;

    size = sizeof(short) * 8 + 10 * 2 + sizeof(int) + sizeof(GUID);

    block = xmalloc(size);
    p = block;
    *p++ = strlen(index_name);
    strcpy((char *)p, index_name);
    p = (short *)((char *)p + strlen(index_name));
    *p++ = strlen(other_name);
    strcpy((char *)p, other_name);
    p = (short *)((char *)p + strlen(other_name));
    *p++ = -1;
    *p++ = add_name(typelib, type->name);
    *p++ = 0;
    *p++ = -1;
    *(int *)p = helpcontext;
    p += 2;
    *p++ = -1;
    *(GUID *)p = guid;
    p += sizeof(GUID)/2;
    *p = kind;

    sltg_add_typeinfo(typelib, block, size, index_name);

    return index_name;
}
