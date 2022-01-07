
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int const xmlChar ;
struct TYPE_4__ {int * buffer; int * raw; int rawconsumed; scalar_t__ error; int * encoder; } ;


 scalar_t__ XML_IO_ENCODER ;
 int xmlBufAdd (int *,int const*,int) ;
 int * xmlBufCreate () ;
 int xmlBufLength (int *) ;
 unsigned int xmlBufUse (int *) ;
 int xmlCharEncInput (TYPE_1__*,int) ;
 int xmlGenericError (int ,char*,int,unsigned int,int ) ;
 int xmlGenericErrorContext ;
 int xmlIOErr (scalar_t__,int *) ;

int
xmlParserInputBufferPush(xmlParserInputBufferPtr in,
                  int len, const char *buf) {
    int nbchars = 0;
    int ret;

    if (len < 0) return(0);
    if ((in == ((void*)0)) || (in->error)) return(-1);
    if (in->encoder != ((void*)0)) {
        unsigned int use;




        if (in->raw == ((void*)0)) {
     in->raw = xmlBufCreate();
 }
 ret = xmlBufAdd(in->raw, (const xmlChar *) buf, len);
 if (ret != 0)
     return(-1);




 use = xmlBufUse(in->raw);
 nbchars = xmlCharEncInput(in, 1);
 if (nbchars < 0) {
     xmlIOErr(XML_IO_ENCODER, ((void*)0));
     in->error = XML_IO_ENCODER;
     return(-1);
 }
 in->rawconsumed += (use - xmlBufUse(in->raw));
    } else {
 nbchars = len;
        ret = xmlBufAdd(in->buffer, (xmlChar *) buf, nbchars);
 if (ret != 0)
     return(-1);
    }





    return(nbchars);
}
