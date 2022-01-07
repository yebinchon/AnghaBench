
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMText ;
typedef int nsIDOMNode ;
typedef int nsAString ;
typedef int PRUnichar ;


 int ERR (char*,scalar_t__) ;
 int IID_nsIDOMText ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int assert (int) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 scalar_t__ nsIDOMNode_QueryInterface (int *,int *,void**) ;
 scalar_t__ nsIDOMText_GetData (int *,int *) ;
 int nsIDOMText_Release (int *) ;

__attribute__((used)) static void get_text_node_data(nsIDOMNode *node, nsAString *nsstr, const PRUnichar **str)
{
    nsIDOMText *nstext;
    nsresult nsres;

    nsres = nsIDOMNode_QueryInterface(node, &IID_nsIDOMText, (void**)&nstext);
    assert(nsres == NS_OK);

    nsAString_Init(nsstr, ((void*)0));
    nsres = nsIDOMText_GetData(nstext, nsstr);
    nsIDOMText_Release(nstext);
    if(NS_FAILED(nsres))
        ERR("GetData failed: %08x\n", nsres);

    nsAString_GetData(nsstr, str);
}
