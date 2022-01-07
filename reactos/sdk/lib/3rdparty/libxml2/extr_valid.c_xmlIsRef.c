
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef TYPE_2__* xmlDocPtr ;
typedef TYPE_3__* xmlAttributePtr ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_12__ {int name; TYPE_2__* doc; } ;
struct TYPE_11__ {scalar_t__ atype; } ;
struct TYPE_10__ {scalar_t__ type; int * extSubset; int * intSubset; } ;
struct TYPE_9__ {int name; } ;


 scalar_t__ XML_ATTRIBUTE_IDREF ;
 scalar_t__ XML_ATTRIBUTE_IDREFS ;
 scalar_t__ XML_HTML_DOCUMENT_NODE ;
 TYPE_3__* xmlGetDtdAttrDesc (int *,int ,int ) ;

int
xmlIsRef(xmlDocPtr doc, xmlNodePtr elem, xmlAttrPtr attr) {
    if (attr == ((void*)0))
        return(0);
    if (doc == ((void*)0)) {
        doc = attr->doc;
 if (doc == ((void*)0)) return(0);
    }

    if ((doc->intSubset == ((void*)0)) && (doc->extSubset == ((void*)0))) {
        return(0);
    } else if (doc->type == XML_HTML_DOCUMENT_NODE) {

        return(0);
    } else {
        xmlAttributePtr attrDecl;

        if (elem == ((void*)0)) return(0);
        attrDecl = xmlGetDtdAttrDesc(doc->intSubset, elem->name, attr->name);
        if ((attrDecl == ((void*)0)) && (doc->extSubset != ((void*)0)))
            attrDecl = xmlGetDtdAttrDesc(doc->extSubset,
                           elem->name, attr->name);

 if ((attrDecl != ((void*)0)) &&
     (attrDecl->atype == XML_ATTRIBUTE_IDREF ||
      attrDecl->atype == XML_ATTRIBUTE_IDREFS))
 return(1);
    }
    return(0);
}
