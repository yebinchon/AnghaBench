
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ proplist; } ;
typedef char WCHAR ;
typedef int UINT ;
typedef int * BSTR ;


 int * SysAllocStringLen (int *,int ) ;
 int SysFreeString (int *) ;
 scalar_t__ SysStringLen (int *) ;
 int * build_classname (struct view const*) ;
 int * build_proplist (struct view const*,int ,int ,int *) ;
 int count_key_columns (struct view const*) ;
 int sprintfW (int *,char const*,int *,int *) ;
 scalar_t__ strlenW (char const*) ;

__attribute__((used)) static BSTR build_relpath( const struct view *view, UINT index, const WCHAR *name )
{
    static const WCHAR fmtW[] = {'%','s','.','%','s',0};
    BSTR class, proplist, ret = ((void*)0);
    UINT num_keys, len;

    if (view->proplist) return ((void*)0);

    if (!(class = build_classname( view ))) return ((void*)0);
    if (!(num_keys = count_key_columns( view ))) return class;
    if (!(proplist = build_proplist( view, index, num_keys, &len ))) goto done;

    len += strlenW( fmtW ) + SysStringLen( class );
    if (!(ret = SysAllocStringLen( ((void*)0), len ))) goto done;
    sprintfW( ret, fmtW, class, proplist );

done:
    SysFreeString( class );
    SysFreeString( proplist );
    return ret;
}
