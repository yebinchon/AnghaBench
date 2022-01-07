
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ count; int * result; struct expr const* cond; int table; struct property const* proplist; } ;
struct property {int dummy; } ;
struct expr {int dummy; } ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int grab_table (int const*) ;
 struct view* heap_alloc (int) ;

HRESULT create_view( const struct property *proplist, const WCHAR *class,
                     const struct expr *cond, struct view **ret )
{
    struct view *view = heap_alloc( sizeof(struct view) );

    if (!view) return E_OUTOFMEMORY;
    view->proplist = proplist;
    view->table = grab_table( class );
    view->cond = cond;
    view->result = ((void*)0);
    view->count = 0;
    *ret = view;
    return S_OK;
}
