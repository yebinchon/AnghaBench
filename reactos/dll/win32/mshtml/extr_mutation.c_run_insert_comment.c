
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIDOMNode ;
typedef int nsIDOMComment ;
typedef int nsAString ;
struct TYPE_4__ {int nsdoc; } ;
typedef int PRUnichar ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int IID_nsIDOMComment ;
 int NS_ERROR_FAILURE ;
 scalar_t__ NS_FAILED (int ) ;
 int * handle_insert_comment (TYPE_1__*,int const*) ;
 int heap_free (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMComment_GetData (int *,int *) ;
 int nsIDOMComment_Release (int *) ;
 int nsISupports_QueryInterface (int *,int *,void**) ;
 int replace_node_by_html (int ,int *,int *) ;

__attribute__((used)) static nsresult run_insert_comment(HTMLDocumentNode *doc, nsISupports *comment_iface, nsISupports *arg2)
{
    const PRUnichar *comment;
    nsIDOMComment *nscomment;
    PRUnichar *replace_html;
    nsAString comment_str;
    nsresult nsres;

    nsres = nsISupports_QueryInterface(comment_iface, &IID_nsIDOMComment, (void**)&nscomment);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMComment iface:%08x\n", nsres);
        return nsres;
    }

    nsAString_Init(&comment_str, ((void*)0));
    nsres = nsIDOMComment_GetData(nscomment, &comment_str);
    if(NS_FAILED(nsres))
        return nsres;

    nsAString_GetData(&comment_str, &comment);
    replace_html = handle_insert_comment(doc, comment);
    nsAString_Finish(&comment_str);

    if(replace_html) {
        HRESULT hres;

        hres = replace_node_by_html(doc->nsdoc, (nsIDOMNode*)nscomment, replace_html);
        heap_free(replace_html);
        if(FAILED(hres))
            nsres = NS_ERROR_FAILURE;
    }


    nsIDOMComment_Release(nscomment);
    return nsres;
}
