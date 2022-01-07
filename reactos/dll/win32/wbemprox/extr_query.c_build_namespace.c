
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ proplist; } ;
typedef char WCHAR ;
typedef int * BSTR ;


 int * SysAllocString (char const*) ;

__attribute__((used)) static BSTR build_namespace( const struct view *view )
{
    static const WCHAR cimv2W[] = {'R','O','O','T','\\','C','I','M','V','2',0};

    if (view->proplist) return ((void*)0);
    return SysAllocString( cimv2W );
}
