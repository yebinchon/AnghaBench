
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlCharEncodingHandlerPtr ;


 scalar_t__ MAX_ENCODING_HANDLERS ;
 int XML_I18N_EXCESS_HANDLER ;
 int XML_I18N_NO_HANDLER ;
 int ** handlers ;
 scalar_t__ nbCharEncodingHandler ;
 int xmlEncodingErr (int ,char*,char*) ;
 int xmlInitCharEncodingHandlers () ;

void
xmlRegisterCharEncodingHandler(xmlCharEncodingHandlerPtr handler) {
    if (handlers == ((void*)0)) xmlInitCharEncodingHandlers();
    if ((handler == ((void*)0)) || (handlers == ((void*)0))) {
        xmlEncodingErr(XML_I18N_NO_HANDLER,
  "xmlRegisterCharEncodingHandler: NULL handler !\n", ((void*)0));
 return;
    }

    if (nbCharEncodingHandler >= MAX_ENCODING_HANDLERS) {
        xmlEncodingErr(XML_I18N_EXCESS_HANDLER,
 "xmlRegisterCharEncodingHandler: Too many handler registered, see %s\n",
                "MAX_ENCODING_HANDLERS");
 return;
    }
    handlers[nbCharEncodingHandler++] = handler;
}
