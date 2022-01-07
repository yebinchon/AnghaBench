
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int expr_t ;
typedef int attr_list_t ;
typedef int FILE ;


 int ATTR_POINTERTYPE ;
 int FALSE ;
 unsigned char FC_BOGUS_ARRAY ;
 int FC_END ;
 unsigned char FC_LGFARRAY ;
 unsigned char FC_LGVARRAY ;
 int FC_PAD ;
 int FC_PP ;
 int FC_RP ;
 unsigned char FC_SMVARRAY ;
 int TRUE ;
 int * current_structure ;
 unsigned char get_array_fc (int *) ;
 int get_attrv (int const*,int ) ;
 scalar_t__ is_conformant_array (int *) ;
 scalar_t__ is_string_type (int const*,int *) ;
 int print_file (int *,int,char*,unsigned short,...) ;
 int print_start_tfs_comment (int *,int *,unsigned int) ;
 unsigned int string_of_type (unsigned char) ;
 int * type_array_get_conformance (int *) ;
 unsigned int type_array_get_dim (int *) ;
 int * type_array_get_element (int *) ;
 int * type_array_get_variance (int *) ;
 scalar_t__ type_array_is_decl_as_ptr (int *) ;
 unsigned int type_buffer_alignment (int *) ;
 scalar_t__ type_has_pointers (int *) ;
 unsigned int type_memsize (int *) ;
 int update_tfsoff (int *,unsigned int,int *) ;
 int write_array_element_type (int *,int const*,int *,int ,unsigned int*) ;
 scalar_t__ write_conf_or_var_desc (int *,int *,unsigned int,int *,int const*) ;
 int write_embedded_types (int *,int const*,int *,char const*,int ,unsigned int*) ;
 int write_end (int *,unsigned int*) ;
 int write_pointer_description (int *,int const*,int *,unsigned int*) ;

__attribute__((used)) static unsigned int write_array_tfs(FILE *file, const attr_list_t *attrs, type_t *type,
                                    const char *name, unsigned int *typestring_offset)
{
    const expr_t *length_is = type_array_get_variance(type);
    const expr_t *size_is = type_array_get_conformance(type);
    unsigned int align;
    unsigned int size;
    unsigned int start_offset;
    unsigned char fc;
    int pointer_type = get_attrv(attrs, ATTR_POINTERTYPE);
    unsigned int baseoff
        = !type_array_is_decl_as_ptr(type) && current_structure
        ? type_memsize(current_structure)
        : 0;

    if (!pointer_type)
        pointer_type = FC_RP;

    if (!is_string_type(attrs, type_array_get_element(type)))
        write_embedded_types(file, attrs, type_array_get_element(type), name, FALSE, typestring_offset);

    size = type_memsize(is_conformant_array(type) ? type_array_get_element(type) : type);
    align = type_buffer_alignment(is_conformant_array(type) ? type_array_get_element(type) : type);
    fc = get_array_fc(type);

    start_offset = *typestring_offset;
    update_tfsoff(type, start_offset, file);
    print_start_tfs_comment(file, type, start_offset);
    print_file(file, 2, "0x%02x,\t/* %s */\n", fc, string_of_type(fc));
    print_file(file, 2, "0x%x,\t/* %d */\n", align - 1, align - 1);
    *typestring_offset += 2;

    align = 0;
    if (fc != FC_BOGUS_ARRAY)
    {
        if (fc == FC_LGFARRAY || fc == FC_LGVARRAY)
        {
            print_file(file, 2, "NdrFcLong(0x%x),\t/* %u */\n", size, size);
            *typestring_offset += 4;
        }
        else
        {
            print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)size, size);
            *typestring_offset += 2;
        }

        if (is_conformant_array(type))
            *typestring_offset
                += write_conf_or_var_desc(file, current_structure, baseoff,
                                          type, size_is);

        if (fc == FC_SMVARRAY || fc == FC_LGVARRAY)
        {
            unsigned int elsize = type_memsize(type_array_get_element(type));
            unsigned int dim = type_array_get_dim(type);

            if (fc == FC_LGVARRAY)
            {
                print_file(file, 2, "NdrFcLong(0x%x),\t/* %u */\n", dim, dim);
                *typestring_offset += 4;
            }
            else
            {
                print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)dim, dim);
                *typestring_offset += 2;
            }

            print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)elsize, elsize);
            *typestring_offset += 2;
        }

        if (length_is)
            *typestring_offset
                += write_conf_or_var_desc(file, current_structure, baseoff,
                                          type, length_is);

        if (type_has_pointers(type_array_get_element(type)) &&
            (type_array_is_decl_as_ptr(type) || !current_structure))
        {
            print_file(file, 2, "0x%x,\t/* FC_PP */\n", FC_PP);
            print_file(file, 2, "0x%x,\t/* FC_PAD */\n", FC_PAD);
            *typestring_offset += 2;
            write_pointer_description(file, is_string_type(attrs, type) ? attrs : ((void*)0), type, typestring_offset);
            print_file(file, 2, "0x%x,\t/* FC_END */\n", FC_END);
            *typestring_offset += 1;
        }

        write_array_element_type(file, is_string_type(attrs, type) ? attrs : ((void*)0), type, FALSE, typestring_offset);
        write_end(file, typestring_offset);
    }
    else
    {
        unsigned int dim = size_is ? 0 : type_array_get_dim(type);
        print_file(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)dim, dim);
        *typestring_offset += 2;
        *typestring_offset
            += write_conf_or_var_desc(file, current_structure, baseoff,
                                      type, size_is);
        *typestring_offset
            += write_conf_or_var_desc(file, current_structure, baseoff,
                                      type, length_is);

        write_array_element_type(file, is_string_type(attrs, type) ? attrs : ((void*)0), type, TRUE, typestring_offset);
        write_end(file, typestring_offset);
    }

    return start_offset;
}
