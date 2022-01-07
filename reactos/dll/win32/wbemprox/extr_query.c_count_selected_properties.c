
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct property* proplist; } ;
struct property {struct property* next; } ;
typedef int UINT ;


 int count_properties (struct view const*) ;

__attribute__((used)) static UINT count_selected_properties( const struct view *view )
{
    const struct property *prop = view->proplist;
    UINT count;

    if (!prop) return count_properties( view );

    count = 1;
    while ((prop = prop->next)) count++;
    return count;
}
