
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int * xmlEnumerationPtr ;
typedef int xmlChar ;
struct TYPE_13__ {scalar_t__ instate; TYPE_2__* input; scalar_t__ sax2; int userData; TYPE_1__* sax; int disableSAX; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_11__ {int (* attributeDecl ) (int ,int const*,int const*,int,int,int *,int *) ;} ;


 scalar_t__ CMP9 (int ,char,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int GROW ;
 int NEXT ;
 char RAW ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ATTRIBUTE_CDATA ;
 int XML_ATTRIBUTE_IMPLIED ;
 int XML_ATTRIBUTE_REQUIRED ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_SPACE_REQUIRED ;
 scalar_t__ XML_PARSER_EOF ;
 int stub1 (int ,int const*,int const*,int,int,int *,int *) ;
 int xmlAddDefAttrs (TYPE_3__*,int const*,int const*,int *) ;
 int xmlAddSpecialAttr (TYPE_3__*,int const*,int const*,int) ;
 int xmlAttrNormalizeSpace (int *,int *) ;
 int xmlFatalErrMsg (TYPE_3__*,int ,char*) ;
 int xmlFree (int *) ;
 int xmlFreeEnumeration (int *) ;
 int xmlParseAttributeType (TYPE_3__*,int **) ;
 int xmlParseDefaultDecl (TYPE_3__*,int **) ;
 int * xmlParseName (TYPE_3__*) ;

void
xmlParseAttributeListDecl(xmlParserCtxtPtr ctxt) {
    const xmlChar *elemName;
    const xmlChar *attrName;
    xmlEnumerationPtr tree;

    if (CMP9(CUR_PTR, '<', '!', 'A', 'T', 'T', 'L', 'I', 'S', 'T')) {
 int inputid = ctxt->input->id;

 SKIP(9);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
                   "Space required after '<!ATTLIST'\n");
 }
        elemName = xmlParseName(ctxt);
 if (elemName == ((void*)0)) {
     xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
      "ATTLIST: no name for Element\n");
     return;
 }
 SKIP_BLANKS;
 GROW;
 while ((RAW != '>') && (ctxt->instate != XML_PARSER_EOF)) {
     int type;
     int def;
     xmlChar *defaultValue = ((void*)0);

     GROW;
            tree = ((void*)0);
     attrName = xmlParseName(ctxt);
     if (attrName == ((void*)0)) {
  xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
          "ATTLIST: no name for Attribute\n");
  break;
     }
     GROW;
     if (SKIP_BLANKS == 0) {
  xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
          "Space required after the attribute name\n");
  break;
     }

     type = xmlParseAttributeType(ctxt, &tree);
     if (type <= 0) {
         break;
     }

     GROW;
     if (SKIP_BLANKS == 0) {
  xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
          "Space required after the attribute type\n");
         if (tree != ((void*)0))
      xmlFreeEnumeration(tree);
  break;
     }

     def = xmlParseDefaultDecl(ctxt, &defaultValue);
     if (def <= 0) {
                if (defaultValue != ((void*)0))
      xmlFree(defaultValue);
         if (tree != ((void*)0))
      xmlFreeEnumeration(tree);
         break;
     }
     if ((type != XML_ATTRIBUTE_CDATA) && (defaultValue != ((void*)0)))
         xmlAttrNormalizeSpace(defaultValue, defaultValue);

     GROW;
            if (RAW != '>') {
  if (SKIP_BLANKS == 0) {
      xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
   "Space required after the attribute default value\n");
      if (defaultValue != ((void*)0))
   xmlFree(defaultValue);
      if (tree != ((void*)0))
   xmlFreeEnumeration(tree);
      break;
  }
     }
     if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX) &&
  (ctxt->sax->attributeDecl != ((void*)0)))
  ctxt->sax->attributeDecl(ctxt->userData, elemName, attrName,
                         type, def, defaultValue, tree);
     else if (tree != ((void*)0))
  xmlFreeEnumeration(tree);

     if ((ctxt->sax2) && (defaultValue != ((void*)0)) &&
         (def != XML_ATTRIBUTE_IMPLIED) &&
  (def != XML_ATTRIBUTE_REQUIRED)) {
  xmlAddDefAttrs(ctxt, elemName, attrName, defaultValue);
     }
     if (ctxt->sax2) {
  xmlAddSpecialAttr(ctxt, elemName, attrName, type);
     }
     if (defaultValue != ((void*)0))
         xmlFree(defaultValue);
     GROW;
 }
 if (RAW == '>') {
     if (inputid != ctxt->input->id) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Attribute list declaration doesn't start and"
                               " stop in the same entity\n");
     }
     NEXT;
 }
    }
}
