
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; char* content; char* name; struct TYPE_7__* next; TYPE_1__* parent; } ;
typedef TYPE_2__ xmlNode ;
typedef TYPE_3__* xmlEntityPtr ;
typedef int xmlDocPtr ;
typedef char xmlChar ;
struct TYPE_8__ {TYPE_2__* children; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_ENTITY_REF_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 char* xmlEncodeAttributeEntities (int ,char*) ;
 char* xmlEncodeEntitiesReentrant (int ,char*) ;
 int xmlFree (char*) ;
 int xmlGenericError (int ,char*,scalar_t__) ;
 int xmlGenericErrorContext ;
 TYPE_3__* xmlGetDocEntity (int ,char*) ;
 char* xmlStrcat (char*,char*) ;
 char* xmlStrncat (char*,char*,int) ;

xmlChar *
xmlNodeListGetString(xmlDocPtr doc, const xmlNode *list, int inLine)
{
    const xmlNode *node = list;
    xmlChar *ret = ((void*)0);
    xmlEntityPtr ent;
    int attr;

    if (list == ((void*)0))
        return (((void*)0));
    if ((list->parent != ((void*)0)) && (list->parent->type == XML_ATTRIBUTE_NODE))
        attr = 1;
    else
        attr = 0;

    while (node != ((void*)0)) {
        if ((node->type == XML_TEXT_NODE) ||
            (node->type == XML_CDATA_SECTION_NODE)) {
            if (inLine) {
                ret = xmlStrcat(ret, node->content);
            } else {
                xmlChar *buffer;

  if (attr)
      buffer = xmlEncodeAttributeEntities(doc, node->content);
  else
      buffer = xmlEncodeEntitiesReentrant(doc, node->content);
                if (buffer != ((void*)0)) {
                    ret = xmlStrcat(ret, buffer);
                    xmlFree(buffer);
                }
            }
        } else if (node->type == XML_ENTITY_REF_NODE) {
            if (inLine) {
                ent = xmlGetDocEntity(doc, node->name);
                if (ent != ((void*)0)) {
                    xmlChar *buffer;
                    buffer = xmlNodeListGetString(doc, ent->children, 1);
                    if (buffer != ((void*)0)) {
                        ret = xmlStrcat(ret, buffer);
                        xmlFree(buffer);
                    }
                } else {
                    ret = xmlStrcat(ret, node->content);
                }
            } else {
                xmlChar buf[2];

                buf[0] = '&';
                buf[1] = 0;
                ret = xmlStrncat(ret, buf, 1);
                ret = xmlStrcat(ret, node->name);
                buf[0] = ';';
                buf[1] = 0;
                ret = xmlStrncat(ret, buf, 1);
            }
        }







        node = node->next;
    }
    return (ret);
}
