
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* input ) (unsigned char*,int*,unsigned char const*,int*) ;int * uconv_in; int * iconv_in; } ;
typedef TYPE_1__ xmlCharEncodingHandler ;


 int stub1 (unsigned char*,int*,unsigned char const*,int*) ;
 int xmlIconvWrapper (int *,unsigned char*,int*,unsigned char const*,int*) ;
 int xmlUconvWrapper (int *,int,unsigned char*,int*,unsigned char const*,int*,int) ;

__attribute__((used)) static int
xmlEncInputChunk(xmlCharEncodingHandler *handler, unsigned char *out,
                 int *outlen, const unsigned char *in, int *inlen, int flush) {
    int ret;
    (void)flush;

    if (handler->input != ((void*)0)) {
        ret = handler->input(out, outlen, in, inlen);
    }
    else {
        *outlen = 0;
        *inlen = 0;
        ret = -2;
    }

    return(ret);
}
