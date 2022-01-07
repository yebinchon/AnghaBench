
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTMLDocumentNode ;
typedef int DispatchEx ;


 int ensure_doc_nsevent_handler (int *,int) ;
 int * impl_from_DispatchEx (int *) ;

__attribute__((used)) static void HTMLDocumentNode_bind_event(DispatchEx *dispex, int eid)
{
    HTMLDocumentNode *This = impl_from_DispatchEx(dispex);
    ensure_doc_nsevent_handler(This, eid);
}
