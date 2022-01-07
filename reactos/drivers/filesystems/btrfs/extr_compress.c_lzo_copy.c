
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inpos; int inlen; int error; int outpos; int outlen; int * in; int * out; } ;
typedef TYPE_1__ lzo_stream ;



__attribute__((used)) static void lzo_copy(lzo_stream* stream, int len) {
    if (stream->inpos + len > stream->inlen) {
        stream->error = 1;
        return;
    }

    if (stream->outpos + len > stream->outlen) {
        stream->error = 1;
        return;
    }

    do {
        stream->out[stream->outpos] = stream->in[stream->inpos];
        stream->inpos++;
        stream->outpos++;
        len--;
    } while (len > 0);
}
