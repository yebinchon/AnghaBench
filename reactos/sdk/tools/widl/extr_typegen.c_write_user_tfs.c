
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {unsigned int typestring_offset; int name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int FALSE ;
 scalar_t__ FC_RP ;
 scalar_t__ FC_UP ;
 int FC_USER_MARSHAL ;
 int TRUE ;
 scalar_t__ TYPE_BASIC ;
 scalar_t__ TYPE_ENUM ;
 scalar_t__ TYPE_POINTER ;
 unsigned char get_basic_fc (TYPE_1__*) ;
 unsigned char get_enum_fc (TYPE_1__*) ;
 scalar_t__ get_pointer_fc (TYPE_1__*,int *,int ) ;
 TYPE_1__* get_user_type (TYPE_1__*,char const**) ;
 int guard_rec (TYPE_1__*) ;
 int print_file (int *,int,char*,...) ;
 int print_start_tfs_comment (int *,TYPE_1__*,unsigned int) ;
 scalar_t__ processed (TYPE_1__*) ;
 int string_of_type (unsigned char) ;
 unsigned int type_buffer_alignment (TYPE_1__*) ;
 scalar_t__ type_get_type (TYPE_1__*) ;
 unsigned int type_memsize (TYPE_1__*) ;
 int update_tfsoff (TYPE_1__*,unsigned int,int *) ;
 scalar_t__ user_type_has_variable_size (TYPE_1__*) ;
 unsigned short user_type_offset (char const*) ;
 int write_embedded_types (int *,int *,TYPE_1__*,int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int write_user_tfs(FILE *file, type_t *type, unsigned int *tfsoff)
{
    unsigned int start, absoff, flags;
    const char *name = ((void*)0);
    type_t *utype = get_user_type(type, &name);
    unsigned int usize = type_memsize(utype);
    unsigned int ualign = type_buffer_alignment(utype);
    unsigned int size = type_memsize(type);
    unsigned short funoff = user_type_offset(name);
    short reloff;

    if (processed(type)) return type->typestring_offset;

    guard_rec(type);

    if(user_type_has_variable_size(utype)) usize = 0;

    if (type_get_type(utype) == TYPE_BASIC ||
        type_get_type(utype) == TYPE_ENUM)
    {
        unsigned char fc;

        if (type_get_type(utype) == TYPE_ENUM)
            fc = get_enum_fc(utype);
        else
            fc = get_basic_fc(utype);

        absoff = *tfsoff;
        print_start_tfs_comment(file, utype, absoff);
        print_file(file, 2, "0x%x,\t/* %s */\n", fc, string_of_type(fc));
        print_file(file, 2, "0x5c,\t/* FC_PAD */\n");
        *tfsoff += 2;
    }
    else
    {
        if (!processed(utype))
            write_embedded_types(file, ((void*)0), utype, utype->name, TRUE, tfsoff);
        absoff = utype->typestring_offset;
    }

    if (type_get_type(utype) == TYPE_POINTER && get_pointer_fc(utype, ((void*)0), FALSE) == FC_RP)
        flags = 0x40;
    else if (type_get_type(utype) == TYPE_POINTER && get_pointer_fc(utype, ((void*)0), FALSE) == FC_UP)
        flags = 0x80;
    else
        flags = 0;

    start = *tfsoff;
    update_tfsoff(type, start, file);
    print_start_tfs_comment(file, type, start);
    print_file(file, 2, "0x%x,\t/* FC_USER_MARSHAL */\n", FC_USER_MARSHAL);
    print_file(file, 2, "0x%x,\t/* Alignment= %d, Flags= %02x */\n",
               flags | (ualign - 1), ualign - 1, flags);
    print_file(file, 2, "NdrFcShort(0x%hx),\t/* Function offset= %hu */\n", funoff, funoff);
    print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)size, size);
    print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)usize, usize);
    *tfsoff += 8;
    reloff = absoff - *tfsoff;
    print_file(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n", reloff, reloff, absoff);
    *tfsoff += 2;
    return start;
}
