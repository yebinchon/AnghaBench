
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlCharEncodingHandlerPtr ;


 int xmlSwitchToEncodingInt (int ,int ,int) ;

int
xmlSwitchToEncoding(xmlParserCtxtPtr ctxt, xmlCharEncodingHandlerPtr handler)
{
    return (xmlSwitchToEncodingInt(ctxt, handler, -1));
}
