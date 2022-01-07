
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xmlCharEncodingHandler ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_6__ {int use; int size; int* content; } ;


 int XML_I18N_CONV_FAILED ;
 int snprintf (char*,int,char*,int,int,int,int) ;
 int xmlBufferGrow (TYPE_1__*,int) ;
 int xmlBufferShrink (TYPE_1__*,int) ;
 int xmlEncInputChunk (int *,int*,int*,int*,int*,int) ;
 int xmlEncodingErr (int ,char*,char*) ;
 int xmlGenericError (int ,char*,int,int,...) ;
 int xmlGenericErrorContext ;

int
xmlCharEncInFunc(xmlCharEncodingHandler * handler, xmlBufferPtr out,
                 xmlBufferPtr in)
{
    int ret;
    int written;
    int toconv;

    if (handler == ((void*)0))
        return (-1);
    if (out == ((void*)0))
        return (-1);
    if (in == ((void*)0))
        return (-1);

    toconv = in->use;
    if (toconv == 0)
        return (0);
    written = out->size - out->use -1;
    if (toconv * 2 >= written) {
        xmlBufferGrow(out, out->size + toconv * 2);
        written = out->size - out->use - 1;
    }
    ret = xmlEncInputChunk(handler, &out->content[out->use], &written,
                           in->content, &toconv, 1);
    xmlBufferShrink(in, toconv);
    out->use += written;
    out->content[out->use] = 0;
    if (ret == -1)
        ret = -3;

    switch (ret) {
        case 0:





            break;
        case -1:





            break;
        case -3:





            break;
        case -2: {
            char buf[50];

     snprintf(&buf[0], 49, "0x%02X 0x%02X 0x%02X 0x%02X",
       in->content[0], in->content[1],
       in->content[2], in->content[3]);
     buf[49] = 0;
     xmlEncodingErr(XML_I18N_CONV_FAILED,
      "input conversion failed due to input error, bytes %s\n",
             buf);
        }
    }



    if (ret == -3)
        ret = 0;
    return (written? written : ret);
}
