
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wstrbuf_t ;
typedef int nsIDOMText ;
typedef int nsIDOMNode ;
typedef int nsAString ;
typedef char WCHAR ;
typedef int PRUnichar ;
typedef int BOOL ;



 int IID_nsIDOMText ;

 int brW ;
 int get_node_type (int *) ;
 int hrW ;
 int is_elem_tag (int *,int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMText_GetData (int *,int *) ;
 int nsIDOMText_Release (int *) ;
 int strlenW (int const*) ;
 int wstrbuf_append_len (int *,char const*,int) ;
 int wstrbuf_append_nodetxt (int *,int const*,int ) ;

__attribute__((used)) static void wstrbuf_append_node(wstrbuf_t *buf, nsIDOMNode *node, BOOL ignore_text)
{

    switch(get_node_type(node)) {
    case 128: {
        nsIDOMText *nstext;
        nsAString data_str;
        const PRUnichar *data;

        if(ignore_text)
            break;

        nsIDOMNode_QueryInterface(node, &IID_nsIDOMText, (void**)&nstext);

        nsAString_Init(&data_str, ((void*)0));
        nsIDOMText_GetData(nstext, &data_str);
        nsAString_GetData(&data_str, &data);
        wstrbuf_append_nodetxt(buf, data, strlenW(data));
        nsAString_Finish(&data_str);

        nsIDOMText_Release(nstext);

        break;
    }
    case 129:
        if(is_elem_tag(node, brW)) {
            static const WCHAR endlW[] = {'\r','\n'};
            wstrbuf_append_len(buf, endlW, 2);
        }else if(is_elem_tag(node, hrW)) {
            static const WCHAR endl2W[] = {'\r','\n','\r','\n'};
            wstrbuf_append_len(buf, endl2W, 4);
        }
    }
}
