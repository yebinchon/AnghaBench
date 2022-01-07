
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cp_static_data_t ;
struct TYPE_3__ {int doc_node; scalar_t__ window; } ;
typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef TYPE_1__ HTMLDocument ;


 TYPE_1__* impl_from_IHTMLDocument2 (int *) ;
 int update_doc_cp_events (int ,int *) ;

__attribute__((used)) static void HTMLDocument_on_advise(IUnknown *iface, cp_static_data_t *cp)
{
    HTMLDocument *This = impl_from_IHTMLDocument2((IHTMLDocument2*)iface);

    if(This->window)
        update_doc_cp_events(This->doc_node, cp);
}
