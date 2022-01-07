
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int * xmlCharEncodingHandlerPtr ;
struct TYPE_5__ {int charset; int * input; } ;


 int XML_CHAR_ENCODING_UTF8 ;
 int xmlErrInternal (TYPE_1__*,char*,int *) ;
 int xmlSwitchInputEncodingInt (TYPE_1__*,int *,int *,int) ;

__attribute__((used)) static int
xmlSwitchToEncodingInt(xmlParserCtxtPtr ctxt,
                       xmlCharEncodingHandlerPtr handler, int len) {
    int ret = 0;

    if (handler != ((void*)0)) {
        if (ctxt->input != ((void*)0)) {
     ret = xmlSwitchInputEncodingInt(ctxt, ctxt->input, handler, len);
 } else {
     xmlErrInternal(ctxt, "xmlSwitchToEncoding : no input\n",
                    ((void*)0));
     return(-1);
 }



 ctxt->charset = XML_CHAR_ENCODING_UTF8;
    } else
 return(-1);
    return(ret);
}
