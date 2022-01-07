
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xmlCharEncodingHandler ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_6__ {int size; int use; scalar_t__* content; } ;


 int xmlBufferGrow (TYPE_1__*,int) ;
 int xmlBufferShrink (TYPE_1__*,int) ;
 int xmlEncInputChunk (int *,scalar_t__*,int*,scalar_t__*,int*,int ) ;
 int xmlGenericError (int ,char*,...) ;
 int xmlGenericErrorContext ;

int
xmlCharEncFirstLineInt(xmlCharEncodingHandler *handler, xmlBufferPtr out,
                       xmlBufferPtr in, int len) {
    int ret;
    int written;
    int toconv;

    if (handler == ((void*)0)) return(-1);
    if (out == ((void*)0)) return(-1);
    if (in == ((void*)0)) return(-1);


    written = out->size - out->use - 1;
    toconv = in->use;
    if (len >= 0) {
        if (toconv > len)
            toconv = len;
    } else {
        if (toconv > 180)
            toconv = 180;
    }
    if (toconv * 2 >= written) {
        xmlBufferGrow(out, toconv * 2);
 written = out->size - out->use - 1;
    }

    ret = xmlEncInputChunk(handler, &out->content[out->use], &written,
                           in->content, &toconv, 0);
    xmlBufferShrink(in, toconv);
    out->use += written;
    out->content[out->use] = 0;
    if (ret == -1) ret = -3;
    if (ret == -3) ret = 0;
    if (ret == -1) ret = 0;
    return(ret);
}
