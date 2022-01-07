
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_3__ {int options; } ;


 scalar_t__ IS_LETTER (int) ;
 int XML_PARSE_OLD10 ;

__attribute__((used)) static int
xmlIsNameStartChar(xmlParserCtxtPtr ctxt, int c) {
    if ((ctxt->options & XML_PARSE_OLD10) == 0) {




 if ((c != ' ') && (c != '>') && (c != '/') &&
     (((c >= 'a') && (c <= 'z')) ||
      ((c >= 'A') && (c <= 'Z')) ||
      (c == '_') || (c == ':') ||
      ((c >= 0xC0) && (c <= 0xD6)) ||
      ((c >= 0xD8) && (c <= 0xF6)) ||
      ((c >= 0xF8) && (c <= 0x2FF)) ||
      ((c >= 0x370) && (c <= 0x37D)) ||
      ((c >= 0x37F) && (c <= 0x1FFF)) ||
      ((c >= 0x200C) && (c <= 0x200D)) ||
      ((c >= 0x2070) && (c <= 0x218F)) ||
      ((c >= 0x2C00) && (c <= 0x2FEF)) ||
      ((c >= 0x3001) && (c <= 0xD7FF)) ||
      ((c >= 0xF900) && (c <= 0xFDCF)) ||
      ((c >= 0xFDF0) && (c <= 0xFFFD)) ||
      ((c >= 0x10000) && (c <= 0xEFFFF))))
     return(1);
    } else {
        if (IS_LETTER(c) || (c == '_') || (c == ':'))
     return(1);
    }
    return(0);
}
