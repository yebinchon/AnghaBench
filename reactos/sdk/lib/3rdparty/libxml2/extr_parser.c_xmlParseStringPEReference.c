
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlEntityPtr ;
typedef char xmlChar ;
struct TYPE_15__ {scalar_t__ etype; } ;
struct TYPE_14__ {scalar_t__ instate; int standalone; scalar_t__ hasExternalSubset; int hasPErefs; scalar_t__ valid; int userData; TYPE_1__* sax; int nbentities; } ;
struct TYPE_13__ {TYPE_3__* (* getParameterEntity ) (int ,char*) ;} ;


 int XML_ERR_ENTITYREF_SEMICOL_MISSING ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_UNDECLARED_ENTITY ;
 scalar_t__ XML_EXTERNAL_PARAMETER_ENTITY ;
 scalar_t__ XML_INTERNAL_PARAMETER_ENTITY ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_WAR_UNDECLARED_ENTITY ;
 TYPE_3__* stub1 (int ,char*) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlFatalErrMsgStr (TYPE_2__*,int ,char*,char*) ;
 int xmlFree (char*) ;
 char* xmlParseStringName (TYPE_2__*,char const**) ;
 int xmlParserEntityCheck (TYPE_2__*,int ,int *,int ) ;
 int xmlWarningMsg (TYPE_2__*,int ,char*,char*,int *) ;

__attribute__((used)) static xmlEntityPtr
xmlParseStringPEReference(xmlParserCtxtPtr ctxt, const xmlChar **str) {
    const xmlChar *ptr;
    xmlChar cur;
    xmlChar *name;
    xmlEntityPtr entity = ((void*)0);

    if ((str == ((void*)0)) || (*str == ((void*)0))) return(((void*)0));
    ptr = *str;
    cur = *ptr;
    if (cur != '%')
        return(((void*)0));
    ptr++;
    name = xmlParseStringName(ctxt, &ptr);
    if (name == ((void*)0)) {
 xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
         "xmlParseStringPEReference: no name\n");
 *str = ptr;
 return(((void*)0));
    }
    cur = *ptr;
    if (cur != ';') {
 xmlFatalErr(ctxt, XML_ERR_ENTITYREF_SEMICOL_MISSING, ((void*)0));
 xmlFree(name);
 *str = ptr;
 return(((void*)0));
    }
    ptr++;




    ctxt->nbentities++;




    if ((ctxt->sax != ((void*)0)) &&
 (ctxt->sax->getParameterEntity != ((void*)0)))
 entity = ctxt->sax->getParameterEntity(ctxt->userData, name);
    if (ctxt->instate == XML_PARSER_EOF) {
 xmlFree(name);
 *str = ptr;
 return(((void*)0));
    }
    if (entity == ((void*)0)) {
 if ((ctxt->standalone == 1) ||
     ((ctxt->hasExternalSubset == 0) && (ctxt->hasPErefs == 0))) {
     xmlFatalErrMsgStr(ctxt, XML_ERR_UNDECLARED_ENTITY,
   "PEReference: %%%s; not found\n", name);
 } else {







     xmlWarningMsg(ctxt, XML_WAR_UNDECLARED_ENTITY,
     "PEReference: %%%s; not found\n",
     name, ((void*)0));
     ctxt->valid = 0;
 }
 xmlParserEntityCheck(ctxt, 0, ((void*)0), 0);
    } else {



 if ((entity->etype != XML_INTERNAL_PARAMETER_ENTITY) &&
     (entity->etype != XML_EXTERNAL_PARAMETER_ENTITY)) {
     xmlWarningMsg(ctxt, XML_WAR_UNDECLARED_ENTITY,
     "%%%s; is not a parameter entity\n",
     name, ((void*)0));
 }
    }
    ctxt->hasPErefs = 1;
    xmlFree(name);
    *str = ptr;
    return(entity);
}
