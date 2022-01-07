
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ proplist; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int * BSTR ;


 int * SysAllocStringLen (int *,scalar_t__) ;
 int SysFreeString (int *) ;
 scalar_t__ SysStringLen (int *) ;
 int * build_namespace (struct view const*) ;
 int * build_relpath (struct view const*,scalar_t__,char const*) ;
 int * build_servername (struct view const*) ;
 int sprintfW (int *,char const*,int *,int *,int *) ;
 scalar_t__ strlenW (char const*) ;

__attribute__((used)) static BSTR build_path( const struct view *view, UINT index, const WCHAR *name )
{
    static const WCHAR fmtW[] = {'\\','\\','%','s','\\','%','s',':','%','s',0};
    BSTR server, namespace = ((void*)0), relpath = ((void*)0), ret = ((void*)0);
    UINT len;

    if (view->proplist) return ((void*)0);

    if (!(server = build_servername( view ))) return ((void*)0);
    if (!(namespace = build_namespace( view ))) goto done;
    if (!(relpath = build_relpath( view, index, name ))) goto done;

    len = strlenW( fmtW ) + SysStringLen( server ) + SysStringLen( namespace ) + SysStringLen( relpath );
    if (!(ret = SysAllocStringLen( ((void*)0), len ))) goto done;
    sprintfW( ret, fmtW, server, namespace, relpath );

done:
    SysFreeString( server );
    SysFreeString( namespace );
    SysFreeString( relpath );
    return ret;
}
