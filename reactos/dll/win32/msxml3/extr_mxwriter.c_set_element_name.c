
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * element; } ;
typedef TYPE_1__ mxwriter ;
typedef int WCHAR ;


 int * SysAllocString (int const*) ;
 int * SysAllocStringLen (int const*,int) ;
 int SysFreeString (int *) ;

__attribute__((used)) static void set_element_name(mxwriter *This, const WCHAR *name, int len)
{
    SysFreeString(This->element);
    if (name)
        This->element = len != -1 ? SysAllocStringLen(name, len) : SysAllocString(name);
    else
        This->element = ((void*)0);
}
