
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef char xmlChar ;


 scalar_t__ IS_CHAR (unsigned int) ;
 int XML_ERR_INVALID_CHAR ;
 int XML_ERR_INVALID_CHARREF ;
 int XML_ERR_INVALID_DEC_CHARREF ;
 int XML_ERR_INVALID_HEX_CHARREF ;
 int xmlFatalErr (int ,int ,int *) ;
 int xmlFatalErrMsgInt (int ,int ,char*,unsigned int) ;

__attribute__((used)) static int
xmlParseStringCharRef(xmlParserCtxtPtr ctxt, const xmlChar **str) {
    const xmlChar *ptr;
    xmlChar cur;
    unsigned int val = 0;
    unsigned int outofrange = 0;

    if ((str == ((void*)0)) || (*str == ((void*)0))) return(0);
    ptr = *str;
    cur = *ptr;
    if ((cur == '&') && (ptr[1] == '#') && (ptr[2] == 'x')) {
 ptr += 3;
 cur = *ptr;
 while (cur != ';') {
     if ((cur >= '0') && (cur <= '9'))
         val = val * 16 + (cur - '0');
     else if ((cur >= 'a') && (cur <= 'f'))
         val = val * 16 + (cur - 'a') + 10;
     else if ((cur >= 'A') && (cur <= 'F'))
         val = val * 16 + (cur - 'A') + 10;
     else {
  xmlFatalErr(ctxt, XML_ERR_INVALID_HEX_CHARREF, ((void*)0));
  val = 0;
  break;
     }
     if (val > 0x10FFFF)
         outofrange = val;

     ptr++;
     cur = *ptr;
 }
 if (cur == ';')
     ptr++;
    } else if ((cur == '&') && (ptr[1] == '#')){
 ptr += 2;
 cur = *ptr;
 while (cur != ';') {
     if ((cur >= '0') && (cur <= '9'))
         val = val * 10 + (cur - '0');
     else {
  xmlFatalErr(ctxt, XML_ERR_INVALID_DEC_CHARREF, ((void*)0));
  val = 0;
  break;
     }
     if (val > 0x10FFFF)
         outofrange = val;

     ptr++;
     cur = *ptr;
 }
 if (cur == ';')
     ptr++;
    } else {
 xmlFatalErr(ctxt, XML_ERR_INVALID_CHARREF, ((void*)0));
 return(0);
    }
    *str = ptr;






    if ((IS_CHAR(val) && (outofrange == 0))) {
        return(val);
    } else {
        xmlFatalErrMsgInt(ctxt, XML_ERR_INVALID_CHAR,
     "xmlParseStringCharRef: invalid xmlChar value %d\n",
     val);
    }
    return(0);
}
