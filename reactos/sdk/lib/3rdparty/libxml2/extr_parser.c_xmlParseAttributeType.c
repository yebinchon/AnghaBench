
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlEnumerationPtr ;


 scalar_t__ CMP5 (int ,char,char,char,char,float) ;
 scalar_t__ CMP6 (int ,char,char,char,char,char,char) ;
 scalar_t__ CMP7 (int ,char,char,char,char,char,char,char) ;
 scalar_t__ CMP8 (int ,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 char NXT (int) ;
 char RAW ;
 int SHRINK ;
 int SKIP (int) ;
 int XML_ATTRIBUTE_CDATA ;
 int XML_ATTRIBUTE_ENTITIES ;
 int XML_ATTRIBUTE_ENTITY ;
 int XML_ATTRIBUTE_ID ;
 int XML_ATTRIBUTE_IDREF ;
 int XML_ATTRIBUTE_IDREFS ;
 int XML_ATTRIBUTE_NMTOKEN ;
 int XML_ATTRIBUTE_NMTOKENS ;
 int xmlParseEnumeratedType (int ,int *) ;

int
xmlParseAttributeType(xmlParserCtxtPtr ctxt, xmlEnumerationPtr *tree) {
    SHRINK;
    if (CMP5(CUR_PTR, 'C', 'D', 'A', 'T', 'A')) {
 SKIP(5);
 return(XML_ATTRIBUTE_CDATA);
     } else if (CMP6(CUR_PTR, 'I', 'D', 'R', 'E', 'F', 'S')) {
 SKIP(6);
 return(XML_ATTRIBUTE_IDREFS);
     } else if (CMP5(CUR_PTR, 'I', 'D', 'R', 'E', 'F')) {
 SKIP(5);
 return(XML_ATTRIBUTE_IDREF);
     } else if ((RAW == 'I') && (NXT(1) == 'D')) {
        SKIP(2);
 return(XML_ATTRIBUTE_ID);
     } else if (CMP6(CUR_PTR, 'E', 'N', 'T', 'I', 'T', 'Y')) {
 SKIP(6);
 return(XML_ATTRIBUTE_ENTITY);
     } else if (CMP8(CUR_PTR, 'E', 'N', 'T', 'I', 'T', 'I', 'E', 'S')) {
 SKIP(8);
 return(XML_ATTRIBUTE_ENTITIES);
     } else if (CMP8(CUR_PTR, 'N', 'M', 'T', 'O', 'K', 'E', 'N', 'S')) {
 SKIP(8);
 return(XML_ATTRIBUTE_NMTOKENS);
     } else if (CMP7(CUR_PTR, 'N', 'M', 'T', 'O', 'K', 'E', 'N')) {
 SKIP(7);
 return(XML_ATTRIBUTE_NMTOKEN);
     }
     return(xmlParseEnumeratedType(ctxt, tree));
}
