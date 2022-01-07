
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef enum type_context { ____Placeholder_type_context } type_context ;
typedef int attr_list_t ;
typedef int FILE ;


 int TDT_ALL_TYPES ;


 int print_start_tfs_comment (int *,int *,unsigned int) ;
 int * type_pointer_get_ref (int *) ;
 int typegen_detect_type (int *,int const*,int ) ;
 int update_tfsoff (int *,unsigned int,int *) ;
 int write_nonsimple_pointer (int *,int const*,int *,int,unsigned int,unsigned int*) ;
 unsigned int write_simple_pointer (int *,int const*,int *,int) ;

__attribute__((used)) static unsigned int write_pointer_tfs(FILE *file, const attr_list_t *attrs,
                                      type_t *type, unsigned int ref_offset,
                                      enum type_context context,
                                      unsigned int *typestring_offset)
{
    unsigned int offset = *typestring_offset;
    type_t *ref = type_pointer_get_ref(type);

    print_start_tfs_comment(file, type, offset);
    update_tfsoff(type, offset, file);

    switch (typegen_detect_type(ref, attrs, TDT_ALL_TYPES))
    {
    case 129:
    case 128:
        *typestring_offset += write_simple_pointer(file, attrs, type, context);
        break;
    default:
        if (ref_offset)
            write_nonsimple_pointer(file, attrs, type, context, ref_offset, typestring_offset);
        break;
    }

    return offset;
}
