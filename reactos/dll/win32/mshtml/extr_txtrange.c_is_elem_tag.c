
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef int PRUnichar ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int IID_nsIDOMElement ;
 scalar_t__ NS_FAILED (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMElement_GetTagName (int *,int *) ;
 int nsIDOMElement_Release (int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int strcmpiW (int const*,int ) ;

__attribute__((used)) static BOOL is_elem_tag(nsIDOMNode *node, LPCWSTR istag)
{
    nsIDOMElement *elem;
    nsAString tag_str;
    const PRUnichar *tag;
    BOOL ret = FALSE;
    nsresult nsres;

    nsres = nsIDOMNode_QueryInterface(node, &IID_nsIDOMElement, (void**)&elem);
    if(NS_FAILED(nsres))
        return FALSE;

    nsAString_Init(&tag_str, ((void*)0));
    nsIDOMElement_GetTagName(elem, &tag_str);
    nsIDOMElement_Release(elem);
    nsAString_GetData(&tag_str, &tag);

    ret = !strcmpiW(tag, istag);

    nsAString_Finish(&tag_str);

    return ret;
}
