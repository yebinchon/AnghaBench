
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
typedef scalar_t__ ptrdiff_t ;
struct TYPE_4__ {int * attsSpecial; int dict; } ;


 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlHashAddEntry2 (int *,int const*,int const*,void*) ;
 int * xmlHashCreateDict (int,int ) ;
 int * xmlHashLookup2 (int *,int const*,int const*) ;

__attribute__((used)) static void
xmlAddSpecialAttr(xmlParserCtxtPtr ctxt,
    const xmlChar *fullname,
    const xmlChar *fullattr,
    int type)
{
    if (ctxt->attsSpecial == ((void*)0)) {
        ctxt->attsSpecial = xmlHashCreateDict(10, ctxt->dict);
 if (ctxt->attsSpecial == ((void*)0))
     goto mem_error;
    }

    if (xmlHashLookup2(ctxt->attsSpecial, fullname, fullattr) != ((void*)0))
        return;

    xmlHashAddEntry2(ctxt->attsSpecial, fullname, fullattr,
                     (void *) (ptrdiff_t) type);
    return;

mem_error:
    xmlErrMemory(ctxt, ((void*)0));
    return;
}
