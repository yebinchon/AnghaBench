
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMText ;
typedef int nsIDOMNode ;
typedef int UINT32 ;


 int IID_nsIDOMText ;
 scalar_t__ NS_OK ;
 int assert (int) ;
 scalar_t__ nsIDOMNode_QueryInterface (int *,int *,void**) ;
 scalar_t__ nsIDOMText_GetLength (int *,int *) ;
 int nsIDOMText_Release (int *) ;

__attribute__((used)) static UINT32 get_text_length(nsIDOMNode *node)
{
    nsIDOMText *nstext;
    UINT32 ret;
    nsresult nsres;

    nsres = nsIDOMNode_QueryInterface(node, &IID_nsIDOMText, (void**)&nstext);
    assert(nsres == NS_OK);

    nsres = nsIDOMText_GetLength(nstext, &ret);
    nsIDOMText_Release(nstext);
    assert(nsres == NS_OK);

    return ret;
}
