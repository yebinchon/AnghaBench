
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsISelection ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__ UINT16 ;
typedef scalar_t__ PRUnichar ;
typedef int LPCWSTR ;
typedef int HTMLDocument ;


 scalar_t__ DOCUMENT_NODE ;
 scalar_t__ ELEMENT_NODE ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ NS_FAILED (int ) ;
 int TRACE (char*,int *) ;
 int * debugstr_w (scalar_t__ const*) ;
 int fontW ;
 int get_elem_attr_value (int *,int ,int *,scalar_t__ const**) ;
 int * get_ns_selection (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int *) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLElement_GetTagName (int *,int *) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMNode_GetNodeType (int *,scalar_t__*) ;
 int nsIDOMNode_GetParentNode (int *,int **) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int nsISelection_GetFocusNode (int *,int **) ;
 int nsISelection_Release (int *) ;
 int sizeW ;
 int strcmpiW (int ,int ) ;
 int strcpyW (scalar_t__*,scalar_t__ const*) ;

__attribute__((used)) static void get_font_size(HTMLDocument *This, WCHAR *ret)
{
    nsISelection *nsselection = get_ns_selection(This);
    nsIDOMHTMLElement *elem = ((void*)0);
    nsIDOMNode *node = ((void*)0), *tmp_node;
    nsAString tag_str;
    LPCWSTR tag;
    UINT16 node_type;
    nsresult nsres;

    *ret = 0;

    if(!nsselection)
        return;

    nsISelection_GetFocusNode(nsselection, &node);
    nsISelection_Release(nsselection);

    while(node) {
        nsres = nsIDOMNode_GetNodeType(node, &node_type);
        if(NS_FAILED(nsres) || node_type == DOCUMENT_NODE)
            break;

        if(node_type == ELEMENT_NODE) {
            nsIDOMNode_QueryInterface(node, &IID_nsIDOMHTMLElement, (void**)&elem);

            nsAString_Init(&tag_str, ((void*)0));
            nsIDOMHTMLElement_GetTagName(elem, &tag_str);
            nsAString_GetData(&tag_str, &tag);

            if(!strcmpiW(tag, fontW)) {
                nsAString val_str;
                const PRUnichar *val;

                TRACE("found font tag %p\n", elem);

                get_elem_attr_value(elem, sizeW, &val_str, &val);
                if(*val) {
                    TRACE("found size %s\n", debugstr_w(val));
                    strcpyW(ret, val);
                }

                nsAString_Finish(&val_str);
            }

            nsAString_Finish(&tag_str);
            nsIDOMHTMLElement_Release(elem);
        }

        if(*ret)
            break;

        tmp_node = node;
        nsIDOMNode_GetParentNode(node, &node);
        nsIDOMNode_Release(tmp_node);
    }

    if(node)
        nsIDOMNode_Release(node);
}
