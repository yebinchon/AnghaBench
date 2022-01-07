
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type_t ;
typedef int attr_list_t ;
struct TYPE_2__ {int * type; } ;
typedef int FILE ;


 scalar_t__ FC_CPSTRUCT ;
 scalar_t__ TYPE_STRUCT ;
 int current_structure ;
 TYPE_1__* find_array_or_string_in_struct (int *) ;
 scalar_t__ get_struct_fc (int *) ;
 int is_array (int *) ;
 scalar_t__ is_conformant_array (int *) ;
 scalar_t__ type_array_is_decl_as_ptr (int *) ;
 scalar_t__ type_get_type (int *) ;
 int type_memsize (int *) ;
 int write_conformant_array_pointer_descriptions (int *,int const*,int *,int ,unsigned int*) ;
 int write_fixed_array_pointer_descriptions (int *,int *,int *,unsigned int*,unsigned int*,unsigned int*) ;
 int write_no_repeat_pointer_descriptions (int *,int *,int *,unsigned int*,unsigned int*,unsigned int*) ;
 int write_varying_array_pointer_descriptions (int *,int *,int *,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void write_pointer_description(FILE *file, const attr_list_t *attrs, type_t *type,
                                      unsigned int *typestring_offset)
{
    unsigned int offset_in_buffer;
    unsigned int offset_in_memory;



    if (!is_array(type))
    {
        offset_in_memory = 0;
        offset_in_buffer = 0;
        write_no_repeat_pointer_descriptions(
            file, ((void*)0), type,
            &offset_in_memory, &offset_in_buffer, typestring_offset);
    }


    offset_in_memory = 0;
    offset_in_buffer = 0;
    write_fixed_array_pointer_descriptions(
        file, ((void*)0), type,
        &offset_in_memory, &offset_in_buffer, typestring_offset);



    if (is_conformant_array(type) &&
        (type_array_is_decl_as_ptr(type) || !current_structure))
        write_conformant_array_pointer_descriptions(
            file, attrs, type, 0, typestring_offset);
    else if (type_get_type(type) == TYPE_STRUCT &&
             get_struct_fc(type) == FC_CPSTRUCT)
    {
        type_t *carray = find_array_or_string_in_struct(type)->type;
        write_conformant_array_pointer_descriptions( file, ((void*)0), carray,
                                                     type_memsize(type), typestring_offset);
    }


    offset_in_memory = 0;
    offset_in_buffer = 0;
    write_varying_array_pointer_descriptions(
            file, ((void*)0), type,
            &offset_in_memory, &offset_in_buffer, typestring_offset);
}
