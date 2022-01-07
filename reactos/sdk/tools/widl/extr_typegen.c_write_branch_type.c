
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int typestring_offset; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 scalar_t__ TYPE_BASIC ;
 scalar_t__ TYPE_ENUM ;
 int error (char*,scalar_t__) ;
 unsigned char get_basic_fc (TYPE_1__ const*) ;
 unsigned char get_enum_fc (TYPE_1__ const*) ;
 int print_file (int *,int,char*,...) ;
 int string_of_type (unsigned char) ;
 scalar_t__ type_get_type (TYPE_1__ const*) ;

__attribute__((used)) static void write_branch_type(FILE *file, const type_t *t, unsigned int *tfsoff)
{
    if (t == ((void*)0))
    {
        print_file(file, 2, "NdrFcShort(0x0),\t/* No type */\n");
    }
    else
    {
        if (type_get_type(t) == TYPE_BASIC || type_get_type(t) == TYPE_ENUM)
        {
            unsigned char fc;
            if (type_get_type(t) == TYPE_BASIC)
                fc = get_basic_fc(t);
            else
                fc = get_enum_fc(t);
            print_file(file, 2, "NdrFcShort(0x80%02x),\t/* Simple arm type: %s */\n",
                       fc, string_of_type(fc));
        }
        else if (t->typestring_offset)
        {
            short reloff = t->typestring_offset - *tfsoff;
            print_file(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %d (%d) */\n",
                       reloff, reloff, t->typestring_offset);
        }
        else
            error("write_branch_type: type unimplemented %d\n", type_get_type(t));
    }

    *tfsoff += 2;
}
