
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int attr_list_t ;
typedef int FILE ;


 int FC_FIXED_OFFSET ;
 int FC_VARIABLE_REPEAT ;
 unsigned int USHRT_MAX ;
 int error (char*,unsigned int) ;
 scalar_t__ is_conformant_array (int *) ;
 int print_file (int *,int,char*,unsigned short,...) ;
 int type_array_get_element (int *) ;
 int type_array_has_variance (int *) ;
 unsigned int type_memsize (int ) ;
 int write_pointer_description_offsets (int *,int const*,int ,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int write_conformant_array_pointer_descriptions(
    FILE *file, const attr_list_t *attrs, type_t *type,
    unsigned int offset_in_memory, unsigned int *typestring_offset)
{
    int pointer_count = 0;

    if (is_conformant_array(type) && !type_array_has_variance(type))
    {
        unsigned int temp = 0;


        pointer_count = write_pointer_description_offsets(
            ((void*)0), attrs, type_array_get_element(type), ((void*)0), ((void*)0), &temp);
        if (pointer_count > 0)
        {
            unsigned int increment_size;
            unsigned int offset_of_array_pointer_mem = offset_in_memory;
            unsigned int offset_of_array_pointer_buf = offset_in_memory;

            increment_size = type_memsize(type_array_get_element(type));

            if (increment_size > USHRT_MAX)
                error("array size of %u bytes is too large\n", increment_size);

            print_file(file, 2, "0x%02x, /* FC_VARIABLE_REPEAT */\n", FC_VARIABLE_REPEAT);
            print_file(file, 2, "0x%02x, /* FC_FIXED_OFFSET */\n", FC_FIXED_OFFSET);
            print_file(file, 2, "NdrFcShort(0x%hx),\t/* Increment = %d */\n", (unsigned short)increment_size, increment_size);
            print_file(file, 2, "NdrFcShort(0x%hx),\t/* Offset to array = %d */\n", (unsigned short)offset_in_memory, offset_in_memory);
            print_file(file, 2, "NdrFcShort(0x%hx),\t/* Number of pointers = %d */\n", (unsigned short)pointer_count, pointer_count);
            *typestring_offset += 8;

            pointer_count = write_pointer_description_offsets(
                file, attrs, type_array_get_element(type),
                &offset_of_array_pointer_mem, &offset_of_array_pointer_buf,
                typestring_offset);
        }
    }

    return pointer_count;
}
