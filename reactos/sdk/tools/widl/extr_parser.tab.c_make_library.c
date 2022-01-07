
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int importlibs; int const* attrs; int name; } ;
typedef TYPE_1__ typelib_t ;
typedef int attr_list_t ;


 int list_init (int *) ;
 TYPE_1__* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static typelib_t *make_library(const char *name, const attr_list_t *attrs)
{
    typelib_t *typelib = xmalloc(sizeof(*typelib));
    typelib->name = xstrdup(name);
    typelib->attrs = attrs;
    list_init( &typelib->importlibs );
    return typelib;
}
