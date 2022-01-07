
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMHTMLScriptElement ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
typedef char PRUnichar ;
typedef int HTMLInnerWindow ;
typedef int GUID ;
typedef int BOOL ;


 int ERR (char*,scalar_t__) ;
 int FALSE ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ NS_OK ;
 scalar_t__ NS_SUCCEEDED (scalar_t__) ;
 int TRUE ;
 int assert (int) ;
 int get_default_script_guid (int *) ;
 scalar_t__ get_elem_attr_value (int *,char const*,int *,char const**) ;
 int get_guid_from_language (char const*,int *) ;
 int get_guid_from_type (char const*,int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,char const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLElement_Release (int *) ;
 scalar_t__ nsIDOMHTMLScriptElement_GetType (int *,int *) ;
 scalar_t__ nsIDOMHTMLScriptElement_QueryInterface (int *,int *,void**) ;

__attribute__((used)) static BOOL get_script_guid(HTMLInnerWindow *window, nsIDOMHTMLScriptElement *nsscript, GUID *guid)
{
    nsIDOMHTMLElement *nselem;
    const PRUnichar *language;
    nsAString val_str;
    BOOL ret = FALSE;
    nsresult nsres;

    static const PRUnichar languageW[] = {'l','a','n','g','u','a','g','e',0};

    nsAString_Init(&val_str, ((void*)0));

    nsres = nsIDOMHTMLScriptElement_GetType(nsscript, &val_str);
    if(NS_SUCCEEDED(nsres)) {
        const PRUnichar *type;

        nsAString_GetData(&val_str, &type);
        if(*type) {
            ret = get_guid_from_type(type, guid);
            nsAString_Finish(&val_str);
            return ret;
        }
    }else {
        ERR("GetType failed: %08x\n", nsres);
    }

    nsres = nsIDOMHTMLScriptElement_QueryInterface(nsscript, &IID_nsIDOMHTMLElement, (void**)&nselem);
    assert(nsres == NS_OK);

    nsres = get_elem_attr_value(nselem, languageW, &val_str, &language);
    nsIDOMHTMLElement_Release(nselem);
    if(NS_SUCCEEDED(nsres)) {
        if(*language) {
            ret = get_guid_from_language(language, guid);
        }else {
            *guid = get_default_script_guid(window);
            ret = TRUE;
        }
        nsAString_Finish(&val_str);
    }

    return ret;
}
