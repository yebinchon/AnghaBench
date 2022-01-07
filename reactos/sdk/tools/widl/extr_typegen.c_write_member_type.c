
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned int typestring_offset; } ;
typedef TYPE_1__ type_t ;
typedef int attr_list_t ;
typedef int FILE ;


 int ATTR_SWITCHIS ;
 unsigned char FC_LONG ;
 unsigned char FC_POINTER ;
 scalar_t__ TYPE_UNION ;
 int error (char*,scalar_t__) ;
 scalar_t__ is_attr (int const*,int ) ;
 scalar_t__ is_conformant_array (TYPE_1__ const*) ;
 scalar_t__ is_embedded_complex (TYPE_1__ const*) ;
 scalar_t__ is_ptr (TYPE_1__ const*) ;
 int print_file (int *,int,char*,...) ;
 int string_of_type (unsigned char) ;
 scalar_t__ type_get_type (TYPE_1__ const*) ;
 int write_base_type (int *,TYPE_1__ const*,unsigned int*) ;

__attribute__((used)) static void write_member_type(FILE *file, const type_t *cont,
                              int cont_is_complex, const attr_list_t *attrs,
                              const type_t *type, unsigned int *corroff,
                              unsigned int *tfsoff)
{
    if (is_embedded_complex(type) && !is_conformant_array(type))
    {
        unsigned int absoff;
        short reloff;

        if (type_get_type(type) == TYPE_UNION && is_attr(attrs, ATTR_SWITCHIS))
        {
            absoff = *corroff;
            *corroff += 8;
        }
        else
        {
            absoff = type->typestring_offset;
        }
        reloff = absoff - (*tfsoff + 2);

        print_file(file, 2, "0x4c,\t/* FC_EMBEDDED_COMPLEX */\n");



        print_file(file, 2, "0x0,\n");
        print_file(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n",
                   reloff, reloff, absoff);
        *tfsoff += 4;
    }
    else if (is_ptr(type) || is_conformant_array(type))
    {
        unsigned char fc = cont_is_complex ? FC_POINTER : FC_LONG;
        print_file(file, 2, "0x%x,\t/* %s */\n", fc, string_of_type(fc));
        *tfsoff += 1;
    }
    else if (!write_base_type(file, type, tfsoff))
        error("Unsupported member type %d\n", type_get_type(type));
}
