
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int * attsSpecial; } ;


 int xmlCleanSpecialAttrCallback ;
 int xmlHashFree (int *,int *) ;
 int xmlHashScanFull (int *,int ,TYPE_1__*) ;
 scalar_t__ xmlHashSize (int *) ;

__attribute__((used)) static void
xmlCleanSpecialAttr(xmlParserCtxtPtr ctxt)
{
    if (ctxt->attsSpecial == ((void*)0))
        return;

    xmlHashScanFull(ctxt->attsSpecial, xmlCleanSpecialAttrCallback, ctxt);

    if (xmlHashSize(ctxt->attsSpecial) == 0) {
        xmlHashFree(ctxt->attsSpecial, ((void*)0));
        ctxt->attsSpecial = ((void*)0);
    }
    return;
}
