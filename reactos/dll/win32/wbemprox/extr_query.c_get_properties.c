
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_2__* table; } ;
typedef size_t UINT ;
struct TYPE_4__ {size_t num_cols; TYPE_1__* columns; } ;
struct TYPE_3__ {int name; } ;
typedef int SAFEARRAY ;
typedef int LONG ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 int * SafeArrayCreateVector (int ,int ,size_t) ;
 int SafeArrayDestroy (int *) ;
 scalar_t__ SafeArrayPutElement (int *,int*,int ) ;
 int SysAllocString (int ) ;
 int SysFreeString (int ) ;
 int VT_BSTR ;
 int WBEM_FLAG_NONSYSTEM_ONLY ;
 int WBEM_FLAG_SYSTEM_ONLY ;
 size_t count_selected_properties (struct view const*) ;
 scalar_t__ is_method (TYPE_2__*,size_t) ;
 int is_selected_prop (struct view const*,int ) ;
 scalar_t__ is_system_prop (int ) ;

HRESULT get_properties( const struct view *view, LONG flags, SAFEARRAY **props )
{
    SAFEARRAY *sa;
    BSTR str;
    UINT i, num_props = count_selected_properties( view );
    LONG j;

    if (!(sa = SafeArrayCreateVector( VT_BSTR, 0, num_props ))) return E_OUTOFMEMORY;

    for (i = 0, j = 0; i < view->table->num_cols; i++)
    {
        BOOL is_system;

        if (is_method( view->table, i )) continue;
        if (!is_selected_prop( view, view->table->columns[i].name )) continue;

        is_system = is_system_prop( view->table->columns[i].name );
        if ((flags & WBEM_FLAG_NONSYSTEM_ONLY) && is_system) continue;
        else if ((flags & WBEM_FLAG_SYSTEM_ONLY) && !is_system) continue;

        str = SysAllocString( view->table->columns[i].name );
        if (!str || SafeArrayPutElement( sa, &j, str ) != S_OK)
        {
            SysFreeString( str );
            SafeArrayDestroy( sa );
            return E_OUTOFMEMORY;
        }
        SysFreeString( str );
        j++;
    }
    *props = sa;
    return S_OK;
}
