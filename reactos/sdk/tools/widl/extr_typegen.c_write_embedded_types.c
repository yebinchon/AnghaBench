
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int attr_list_t ;
typedef int FILE ;


 int TYPE_CONTEXT_CONTAINER ;
 int TYPE_CONTEXT_CONTAINER_NO_POINTERS ;
 int write_type_tfs (int *,int,int const*,int *,char const*,int ,unsigned int*) ;

__attribute__((used)) static int write_embedded_types(FILE *file, const attr_list_t *attrs, type_t *type,
                                const char *name, int write_ptr, unsigned int *tfsoff)
{
    return write_type_tfs(file, 2, attrs, type, name, write_ptr ? TYPE_CONTEXT_CONTAINER : TYPE_CONTEXT_CONTAINER_NO_POINTERS, tfsoff);
}
