
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef TYPE_2__* xmlEnumerationPtr ;
typedef int xmlChar ;
struct TYPE_12__ {struct TYPE_12__* next; int name; } ;
struct TYPE_11__ {int dict; } ;


 int NEXT ;
 char RAW ;
 int SHRINK ;
 int SKIP_BLANKS ;
 int XML_DTD_DUP_TOKEN ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_NOTATION_NOT_FINISHED ;
 int XML_ERR_NOTATION_NOT_STARTED ;
 TYPE_2__* xmlCreateEnumeration (int const*) ;
 int xmlDictOwns (int ,int const*) ;
 int xmlFatalErr (TYPE_1__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_1__*,int ,char*) ;
 int xmlFree (int *) ;
 int xmlFreeEnumeration (TYPE_2__*) ;
 int * xmlParseName (TYPE_1__*) ;
 scalar_t__ xmlStrEqual (int const*,int ) ;
 int xmlValidityError (TYPE_1__*,int ,char*,int const*,int *) ;

xmlEnumerationPtr
xmlParseNotationType(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    xmlEnumerationPtr ret = ((void*)0), last = ((void*)0), cur, tmp;

    if (RAW != '(') {
 xmlFatalErr(ctxt, XML_ERR_NOTATION_NOT_STARTED, ((void*)0));
 return(((void*)0));
    }
    SHRINK;
    do {
        NEXT;
 SKIP_BLANKS;
        name = xmlParseName(ctxt);
 if (name == ((void*)0)) {
     xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
      "Name expected in NOTATION declaration\n");
            xmlFreeEnumeration(ret);
     return(((void*)0));
 }
 tmp = ret;
 while (tmp != ((void*)0)) {
     if (xmlStrEqual(name, tmp->name)) {
  xmlValidityError(ctxt, XML_DTD_DUP_TOKEN,
   "standalone: attribute notation value token %s duplicated\n",
     name, ((void*)0));
  if (!xmlDictOwns(ctxt->dict, name))
      xmlFree((xmlChar *) name);
  break;
     }
     tmp = tmp->next;
 }
 if (tmp == ((void*)0)) {
     cur = xmlCreateEnumeration(name);
     if (cur == ((void*)0)) {
                xmlFreeEnumeration(ret);
                return(((void*)0));
            }
     if (last == ((void*)0)) ret = last = cur;
     else {
  last->next = cur;
  last = cur;
     }
 }
 SKIP_BLANKS;
    } while (RAW == '|');
    if (RAW != ')') {
 xmlFatalErr(ctxt, XML_ERR_NOTATION_NOT_FINISHED, ((void*)0));
        xmlFreeEnumeration(ret);
 return(((void*)0));
    }
    NEXT;
    return(ret);
}
