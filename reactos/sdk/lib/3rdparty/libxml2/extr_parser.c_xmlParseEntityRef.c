
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlEntityPtr ;
typedef int xmlChar ;
struct TYPE_21__ {int etype; int checked; int * content; } ;
struct TYPE_20__ {scalar_t__ instate; int options; int wellFormed; int standalone; scalar_t__ hasExternalSubset; scalar_t__ hasPErefs; scalar_t__ inSubset; scalar_t__ valid; struct TYPE_20__* userData; TYPE_1__* sax; int nbentities; } ;
struct TYPE_19__ {int (* reference ) (TYPE_2__*,int const*) ;TYPE_3__* (* getEntity ) (TYPE_2__*,int const*) ;} ;


 int GROW ;
 int NEXT ;
 char RAW ;
 int XML_ERR_ENTITYREF_SEMICOL_MISSING ;
 int XML_ERR_ENTITY_IS_EXTERNAL ;
 int XML_ERR_ENTITY_IS_PARAMETER ;
 int XML_ERR_LT_IN_ATTRIBUTE ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_UNDECLARED_ENTITY ;
 int XML_ERR_UNPARSED_ENTITY ;
 int XML_EXTERNAL_GENERAL_PARSED_ENTITY ;
 int XML_EXTERNAL_GENERAL_UNPARSED_ENTITY ;


 int XML_INTERNAL_PREDEFINED_ENTITY ;
 scalar_t__ XML_PARSER_ATTRIBUTE_VALUE ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_OLDSAX ;
 int XML_WAR_UNDECLARED_ENTITY ;
 TYPE_3__* stub1 (TYPE_2__*,int const*) ;
 int stub2 (TYPE_2__*,int const*) ;
 int xmlErrMsgStr (TYPE_2__*,int ,char*,int const*) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlFatalErrMsgStr (TYPE_2__*,int ,char*,int const*) ;
 TYPE_3__* xmlGetPredefinedEntity (int const*) ;
 int * xmlParseName (TYPE_2__*) ;
 int xmlParserEntityCheck (TYPE_2__*,int ,TYPE_3__*,int ) ;
 TYPE_3__* xmlSAX2GetEntity (TYPE_2__*,int const*) ;
 scalar_t__ xmlStrchr (int *,char) ;

xmlEntityPtr
xmlParseEntityRef(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    xmlEntityPtr ent = ((void*)0);

    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        return(((void*)0));

    if (RAW != '&')
        return(((void*)0));
    NEXT;
    name = xmlParseName(ctxt);
    if (name == ((void*)0)) {
 xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
         "xmlParseEntityRef: no name\n");
        return(((void*)0));
    }
    if (RAW != ';') {
 xmlFatalErr(ctxt, XML_ERR_ENTITYREF_SEMICOL_MISSING, ((void*)0));
 return(((void*)0));
    }
    NEXT;




    if ((ctxt->options & XML_PARSE_OLDSAX) == 0) {
        ent = xmlGetPredefinedEntity(name);
        if (ent != ((void*)0))
            return(ent);
    }




    ctxt->nbentities++;





    if (ctxt->sax != ((void*)0)) {
 if (ctxt->sax->getEntity != ((void*)0))
     ent = ctxt->sax->getEntity(ctxt->userData, name);
 if ((ctxt->wellFormed == 1 ) && (ent == ((void*)0)) &&
     (ctxt->options & XML_PARSE_OLDSAX))
     ent = xmlGetPredefinedEntity(name);
 if ((ctxt->wellFormed == 1 ) && (ent == ((void*)0)) &&
     (ctxt->userData==ctxt)) {
     ent = xmlSAX2GetEntity(ctxt, name);
 }
    }
    if (ctxt->instate == XML_PARSER_EOF)
 return(((void*)0));
    if (ent == ((void*)0)) {
 if ((ctxt->standalone == 1) ||
     ((ctxt->hasExternalSubset == 0) &&
      (ctxt->hasPErefs == 0))) {
     xmlFatalErrMsgStr(ctxt, XML_ERR_UNDECLARED_ENTITY,
       "Entity '%s' not defined\n", name);
 } else {
     xmlErrMsgStr(ctxt, XML_WAR_UNDECLARED_ENTITY,
       "Entity '%s' not defined\n", name);
     if ((ctxt->inSubset == 0) &&
  (ctxt->sax != ((void*)0)) &&
  (ctxt->sax->reference != ((void*)0))) {
  ctxt->sax->reference(ctxt->userData, name);
     }
 }
 xmlParserEntityCheck(ctxt, 0, ent, 0);
 ctxt->valid = 0;
    }






    else if (ent->etype == XML_EXTERNAL_GENERAL_UNPARSED_ENTITY) {
 xmlFatalErrMsgStr(ctxt, XML_ERR_UNPARSED_ENTITY,
   "Entity reference to unparsed entity %s\n", name);
    }






    else if ((ctxt->instate == XML_PARSER_ATTRIBUTE_VALUE) &&
      (ent->etype == XML_EXTERNAL_GENERAL_PARSED_ENTITY)) {
 xmlFatalErrMsgStr(ctxt, XML_ERR_ENTITY_IS_EXTERNAL,
      "Attribute references external entity '%s'\n", name);
    }






    else if ((ctxt->instate == XML_PARSER_ATTRIBUTE_VALUE) &&
      (ent != ((void*)0)) &&
      (ent->etype != XML_INTERNAL_PREDEFINED_ENTITY)) {
 if (((ent->checked & 1) || (ent->checked == 0)) &&
      (ent->content != ((void*)0)) && (xmlStrchr(ent->content, '<'))) {
     xmlFatalErrMsgStr(ctxt, XML_ERR_LT_IN_ATTRIBUTE,
 "'<' in entity '%s' is not allowed in attributes values\n", name);
        }
    }




    else {
 switch (ent->etype) {
     case 128:
     case 129:
     xmlFatalErrMsgStr(ctxt, XML_ERR_ENTITY_IS_PARAMETER,
      "Attempt to reference the parameter entity '%s'\n",
         name);
     break;
     default:
     break;
 }
    }







    return(ent);
}
