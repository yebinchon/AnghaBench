
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct property* proplist; } ;
struct property {struct property* next; int name; } ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpiW (int ,int const*) ;

BOOL is_selected_prop( const struct view *view, const WCHAR *name )
{
    const struct property *prop = view->proplist;

    if (!prop) return TRUE;
    while (prop)
    {
        if (!strcmpiW( prop->name, name )) return TRUE;
        prop = prop->next;
    }
    return FALSE;
}
