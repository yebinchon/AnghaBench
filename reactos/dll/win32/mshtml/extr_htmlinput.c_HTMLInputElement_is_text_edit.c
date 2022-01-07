
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef char WCHAR ;
struct TYPE_3__ {int nsinput; } ;
typedef int PRUnichar ;
typedef TYPE_1__ HTMLInputElement ;
typedef int HTMLDOMNode ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLInputElement_GetType (int ,int *) ;
 int strcmpW (int const*,char const*) ;

__attribute__((used)) static BOOL HTMLInputElement_is_text_edit(HTMLDOMNode *iface)
{
    HTMLInputElement *This = impl_from_HTMLDOMNode(iface);
    const PRUnichar *type;
    nsAString nsstr;
    nsresult nsres;
    BOOL ret = FALSE;

    static const WCHAR buttonW[] = {'b','u','t','t','o','n',0};
    static const WCHAR hiddenW[] = {'h','i','d','d','e','n',0};
    static const WCHAR passwordW[] = {'p','a','s','s','w','o','r','d',0};
    static const WCHAR resetW[] = {'r','e','s','e','t',0};
    static const WCHAR submitW[] = {'s','u','b','m','i','t',0};
    static const WCHAR textW[] = {'t','e','x','t',0};

    nsAString_Init(&nsstr, ((void*)0));
    nsres = nsIDOMHTMLInputElement_GetType(This->nsinput, &nsstr);
    if(NS_SUCCEEDED(nsres)) {
        nsAString_GetData(&nsstr, &type);
        ret = !strcmpW(type, buttonW) || !strcmpW(type, hiddenW) || !strcmpW(type, passwordW)
            || !strcmpW(type, resetW) || !strcmpW(type, submitW) || !strcmpW(type, textW);
    }
    nsAString_Finish(&nsstr);
    return ret;
}
