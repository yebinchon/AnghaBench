
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
typedef int WCHAR ;
typedef int PRUnichar ;


 int ERR (char*,int ,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_OK ;
 int debugstr_w (int const*) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMHTMLElement_GetAttribute (int *,int *,int *) ;

nsresult get_elem_attr_value(nsIDOMHTMLElement *nselem, const WCHAR *name, nsAString *val_str, const PRUnichar **val)
{
    nsAString name_str;
    nsresult nsres;

    nsAString_InitDepend(&name_str, name);
    nsAString_Init(val_str, ((void*)0));
    nsres = nsIDOMHTMLElement_GetAttribute(nselem, &name_str, val_str);
    nsAString_Finish(&name_str);
    if(NS_FAILED(nsres)) {
        ERR("GetAttribute(%s) failed: %08x\n", debugstr_w(name), nsres);
        nsAString_Finish(val_str);
        return nsres;
    }

    nsAString_GetData(val_str, val);
    return NS_OK;
}
