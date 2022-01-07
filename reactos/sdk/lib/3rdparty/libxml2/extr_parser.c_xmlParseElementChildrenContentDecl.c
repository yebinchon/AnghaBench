
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlElementContentPtr ;


 int xmlParseElementChildrenContentDeclPriv (int ,int,int) ;

xmlElementContentPtr
xmlParseElementChildrenContentDecl(xmlParserCtxtPtr ctxt, int inputchk) {

    return(xmlParseElementChildrenContentDeclPriv(ctxt, inputchk, 1));
}
