
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int typestring_offset; } ;
typedef TYPE_1__ type_t ;
typedef int attr_list_t ;
typedef int FILE ;


 scalar_t__ TYPE_BASIC ;
 int TYPE_CONTEXT_CONTAINER ;
 scalar_t__ TYPE_ENUM ;
 int is_embedded_complex (TYPE_1__*) ;
 scalar_t__ is_ptr (TYPE_1__*) ;
 scalar_t__ is_string_type (int const*,TYPE_1__*) ;
 scalar_t__ processed (TYPE_1__*) ;
 TYPE_1__* type_array_get_element (TYPE_1__ const*) ;
 scalar_t__ type_get_type (TYPE_1__*) ;
 TYPE_1__* type_pointer_get_ref (TYPE_1__*) ;
 int write_member_type (int *,TYPE_1__ const*,int,int *,TYPE_1__*,int *,unsigned int*) ;
 int write_nonsimple_pointer (int *,int *,TYPE_1__*,int ,int ,unsigned int*) ;
 scalar_t__ write_simple_pointer (int *,int *,TYPE_1__*,int ) ;
 int write_string_tfs (int *,int *,TYPE_1__*,int ,int *,unsigned int*) ;

__attribute__((used)) static void write_array_element_type(FILE *file, const attr_list_t *attrs, const type_t *type,
                                     int cont_is_complex, unsigned int *tfsoff)
{
    type_t *elem = type_array_get_element(type);

    if (!is_embedded_complex(elem) && is_ptr(elem))
    {
        type_t *ref = type_pointer_get_ref(elem);

        if (processed(ref))
        {
            write_nonsimple_pointer(file, ((void*)0), elem, TYPE_CONTEXT_CONTAINER,
                                    ref->typestring_offset, tfsoff);
            return;
        }
        if (cont_is_complex && is_string_type(attrs, elem))
        {
            write_string_tfs(file, ((void*)0), elem, TYPE_CONTEXT_CONTAINER, ((void*)0), tfsoff);
            return;
        }
        if (!is_string_type(((void*)0), elem) &&
            (type_get_type(ref) == TYPE_BASIC || type_get_type(ref) == TYPE_ENUM))
        {
            *tfsoff += write_simple_pointer(file, ((void*)0), elem, TYPE_CONTEXT_CONTAINER);
            return;
        }
    }
    write_member_type(file, type, cont_is_complex, ((void*)0), elem, ((void*)0), tfsoff);
}
