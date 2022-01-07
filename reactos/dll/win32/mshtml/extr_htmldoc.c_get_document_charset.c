
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ charset; int nsdoc; } ;
typedef scalar_t__ PRUnichar ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int BSTR ;


 scalar_t__ CP_UTF8 ;
 int ERR (char*,int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int SysAllocString (scalar_t__ const*) ;
 int SysFreeString (int ) ;
 scalar_t__ cp_from_charset_string (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,scalar_t__ const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLDocument_GetCharacterSet (int ,int *) ;

UINT get_document_charset(HTMLDocumentNode *doc)
{
    nsAString charset_str;
    UINT ret = 0;
    nsresult nsres;

    if(doc->charset)
        return doc->charset;

    nsAString_Init(&charset_str, ((void*)0));
    nsres = nsIDOMHTMLDocument_GetCharacterSet(doc->nsdoc, &charset_str);
    if(NS_SUCCEEDED(nsres)) {
        const PRUnichar *charset;

        nsAString_GetData(&charset_str, &charset);

        if(*charset) {
            BSTR str = SysAllocString(charset);
            ret = cp_from_charset_string(str);
            SysFreeString(str);
        }
    }else {
        ERR("GetCharset failed: %08x\n", nsres);
    }
    nsAString_Finish(&charset_str);

    if(!ret)
        return CP_UTF8;

    return doc->charset = ret;
}
