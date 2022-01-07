
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlChar ;
typedef int * xmlBufPtr ;
struct TYPE_3__ {int * encoder; int * raw; int * buffer; } ;


 int XML_I18N_CONV_FAILED ;
 int snprintf (char*,int,char*,int const,int const,int const,int const) ;
 int xmlBufAddLen (int *,int) ;
 int xmlBufAvail (int *) ;
 int* xmlBufContent (int *) ;
 int xmlBufEnd (int *) ;
 int xmlBufGrow (int *,size_t) ;
 int xmlBufShrink (int *,int) ;
 size_t xmlBufUse (int *) ;
 int xmlEncInputChunk (int *,int ,int*,int*,int*,int ) ;
 int xmlEncodingErr (int ,char*,char*) ;
 int xmlGenericError (int ,char*,int,int,...) ;
 int xmlGenericErrorContext ;

int
xmlCharEncFirstLineInput(xmlParserInputBufferPtr input, int len)
{
    int ret;
    size_t written;
    size_t toconv;
    int c_in;
    int c_out;
    xmlBufPtr in;
    xmlBufPtr out;

    if ((input == ((void*)0)) || (input->encoder == ((void*)0)) ||
        (input->buffer == ((void*)0)) || (input->raw == ((void*)0)))
        return (-1);
    out = input->buffer;
    in = input->raw;

    toconv = xmlBufUse(in);
    if (toconv == 0)
        return (0);
    written = xmlBufAvail(out) - 1;
    if (len >= 0) {
        if (toconv > (unsigned int) len)
            toconv = len;
    } else {
        if (toconv > 180)
            toconv = 180;
    }
    if (toconv * 2 >= written) {
        xmlBufGrow(out, toconv * 2);
        written = xmlBufAvail(out) - 1;
    }
    if (written > 360)
        written = 360;

    c_in = toconv;
    c_out = written;
    ret = xmlEncInputChunk(input->encoder, xmlBufEnd(out), &c_out,
                           xmlBufContent(in), &c_in, 0);
    xmlBufShrink(in, c_in);
    xmlBufAddLen(out, c_out);
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
            const xmlChar *content = xmlBufContent(in);

     snprintf(&buf[0], 49, "0x%02X 0x%02X 0x%02X 0x%02X",
       content[0], content[1],
       content[2], content[3]);
     buf[49] = 0;
     xmlEncodingErr(XML_I18N_CONV_FAILED,
      "input conversion failed due to input error, bytes %s\n",
             buf);
        }
    }



    if (ret == -3) ret = 0;
    if (ret == -1) ret = 0;
    return(ret);
}
