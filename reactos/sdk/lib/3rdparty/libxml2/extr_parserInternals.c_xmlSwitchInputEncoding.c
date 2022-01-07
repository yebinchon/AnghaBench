
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserInputPtr ;
typedef int xmlParserCtxtPtr ;
typedef int xmlCharEncodingHandlerPtr ;


 int xmlSwitchInputEncodingInt (int ,int ,int ,int) ;

int
xmlSwitchInputEncoding(xmlParserCtxtPtr ctxt, xmlParserInputPtr input,
                          xmlCharEncodingHandlerPtr handler) {
    return(xmlSwitchInputEncodingInt(ctxt, input, handler, -1));
}
