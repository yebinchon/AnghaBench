
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int styleid_t ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int WCHAR ;
typedef int LONG ;
typedef int HRESULT ;


 int px_formatW ;
 int set_nsstyle_attr (int *,int ,int *,int ) ;
 int sprintfW (int *,int ,int ) ;

__attribute__((used)) static HRESULT set_style_pxattr(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, LONG value)
{
    WCHAR value_str[16];

    sprintfW(value_str, px_formatW, value);

    return set_nsstyle_attr(nsstyle, sid, value_str, 0);
}
