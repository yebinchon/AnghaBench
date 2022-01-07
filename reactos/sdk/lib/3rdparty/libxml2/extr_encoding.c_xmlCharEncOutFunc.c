
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xmlCharEncodingHandler ;
typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
typedef int charref ;
struct TYPE_6__ {int size; int use; int* content; int alloc; } ;


 int XML_BUFFER_ALLOC_IMMUTABLE ;
 int XML_I18N_CONV_FAILED ;
 int XML_I18N_NO_OUTPUT ;
 int snprintf (char*,int,char*,int,...) ;
 int xmlBufferGrow (TYPE_1__*,int) ;
 int xmlBufferShrink (TYPE_1__*,int) ;
 int xmlEncOutputChunk (int *,int*,int*,int*,int*) ;
 int xmlEncodingErr (int ,char*,char*) ;
 int xmlGenericError (int ,char*,...) ;
 int xmlGenericErrorContext ;
 int xmlGetUTF8Char (int const*,int*) ;

int
xmlCharEncOutFunc(xmlCharEncodingHandler *handler, xmlBufferPtr out,
                  xmlBufferPtr in) {
    int ret;
    int written;
    int writtentot = 0;
    int toconv;
    int output = 0;

    if (handler == ((void*)0)) return(-1);
    if (out == ((void*)0)) return(-1);

retry:

    written = out->size - out->use;

    if (written > 0)
 written--;




    if (in == ((void*)0)) {
        toconv = 0;

        xmlEncOutputChunk(handler, &out->content[out->use], &written,
                          ((void*)0), &toconv);
        out->use += written;
        out->content[out->use] = 0;




        return(0);
    }




    toconv = in->use;
    if (toconv == 0)
 return(0);
    if (toconv * 4 >= written) {
        xmlBufferGrow(out, toconv * 4);
 written = out->size - out->use - 1;
    }
    ret = xmlEncOutputChunk(handler, &out->content[out->use], &written,
                            in->content, &toconv);
    xmlBufferShrink(in, toconv);
    out->use += written;
    writtentot += written;
    out->content[out->use] = 0;
    if (ret == -1) {
        if (written > 0) {

            goto retry;
        }
        ret = -3;
    }

    if (ret >= 0) output += ret;




    switch (ret) {
        case 0:





     break;
        case -1:




     break;
        case -3:




     break;
        case -4:
     xmlEncodingErr(XML_I18N_NO_OUTPUT,
             "xmlCharEncOutFunc: no output function !\n", ((void*)0));
     ret = -1;
            break;
        case -2: {
     xmlChar charref[20];
     int len = in->use;
     const xmlChar *utf = (const xmlChar *) in->content;
     int cur, charrefLen;

     cur = xmlGetUTF8Char(utf, &len);
     if (cur <= 0)
                break;
            charrefLen = snprintf((char *) &charref[0], sizeof(charref),
                             "&#%d;", cur);
            xmlBufferShrink(in, len);
            xmlBufferGrow(out, charrefLen * 4);
     written = out->size - out->use - 1;
            toconv = charrefLen;
            ret = xmlEncOutputChunk(handler, &out->content[out->use], &written,
                                    charref, &toconv);

     if ((ret < 0) || (toconv != charrefLen)) {
  char buf[50];

  snprintf(&buf[0], 49, "0x%02X 0x%02X 0x%02X 0x%02X",
    in->content[0], in->content[1],
    in->content[2], in->content[3]);
  buf[49] = 0;
  xmlEncodingErr(XML_I18N_CONV_FAILED,
      "output conversion failed due to conv error, bytes %s\n",
          buf);
  if (in->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
      in->content[0] = ' ';
         break;
     }

            out->use += written;
            writtentot += written;
            out->content[out->use] = 0;
            goto retry;
 }
    }
    return(ret);
}
