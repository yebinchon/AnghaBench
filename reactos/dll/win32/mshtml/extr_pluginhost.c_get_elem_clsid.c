
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
typedef char PRUnichar ;
typedef int CLSID ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int get_elem_attr_value (int *,char const*,int *,char const**) ;
 int nsAString_Finish (int *) ;
 int parse_classid (char const*,int *) ;

__attribute__((used)) static BOOL get_elem_clsid(nsIDOMHTMLElement *elem, CLSID *clsid)
{
    const PRUnichar *val;
    nsAString val_str;
    nsresult nsres;
    BOOL ret = FALSE;

    static const PRUnichar classidW[] = {'c','l','a','s','s','i','d',0};

    nsres = get_elem_attr_value(elem, classidW, &val_str, &val);
    if(NS_SUCCEEDED(nsres)) {
        if(*val)
            ret = parse_classid(val, clsid);
        nsAString_Finish(&val_str);
    }

    return ret;
}
