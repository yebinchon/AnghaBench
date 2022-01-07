
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int * next; int const* class; int const* name; } ;
struct parser {int dummy; } ;
typedef int WCHAR ;


 struct property* alloc_mem (struct parser*,int) ;

__attribute__((used)) static struct property *alloc_property( struct parser *parser, const WCHAR *class, const WCHAR *name )
{
    struct property *prop = alloc_mem( parser, sizeof(*prop) );
    if (prop)
    {
        prop->name = name;
        prop->class = class;
        prop->next = ((void*)0);
    }
    return prop;
}
