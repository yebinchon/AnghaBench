
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef int xmlParserCtxtPtr ;
typedef TYPE_2__* xmlEntityPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int etype; scalar_t__ length; int * content; int * URI; int * name; scalar_t__ ExternalID; } ;
struct TYPE_7__ {char* filename; scalar_t__ length; int * end; int * cur; int * base; } ;
 int xmlErrInternal (int ,char*,int *) ;
 int xmlGenericError (int ,char*,int *) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlLoadExternalEntity (char*,char*,int ) ;
 TYPE_1__* xmlNewInputStream (int ) ;
 scalar_t__ xmlParserDebugEntities ;
 scalar_t__ xmlStrdup (int *) ;
 scalar_t__ xmlStrlen (int *) ;

xmlParserInputPtr
xmlNewEntityInputStream(xmlParserCtxtPtr ctxt, xmlEntityPtr entity) {
    xmlParserInputPtr input;

    if (entity == ((void*)0)) {
        xmlErrInternal(ctxt, "xmlNewEntityInputStream entity = NULL\n",
                ((void*)0));
 return(((void*)0));
    }
    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext,
  "new input from entity: %s\n", entity->name);
    if (entity->content == ((void*)0)) {
 switch (entity->etype) {
            case 132:
         xmlErrInternal(ctxt, "Cannot parse entity %s\n",
                 entity->name);
                break;
            case 133:
            case 131:
  return(xmlLoadExternalEntity((char *) entity->URI,
         (char *) entity->ExternalID, ctxt));
            case 130:
         xmlErrInternal(ctxt,
        "Internal entity %s without content !\n",
                 entity->name);
                break;
            case 129:
         xmlErrInternal(ctxt,
        "Internal parameter entity %s without content !\n",
                 entity->name);
                break;
            case 128:
         xmlErrInternal(ctxt,
        "Predefined entity %s without content !\n",
                 entity->name);
                break;
 }
 return(((void*)0));
    }
    input = xmlNewInputStream(ctxt);
    if (input == ((void*)0)) {
 return(((void*)0));
    }
    if (entity->URI != ((void*)0))
 input->filename = (char *) xmlStrdup((xmlChar *) entity->URI);
    input->base = entity->content;
    if (entity->length == 0)
        entity->length = xmlStrlen(entity->content);
    input->cur = entity->content;
    input->length = entity->length;
    input->end = &entity->content[input->length];
    return(input);
}
