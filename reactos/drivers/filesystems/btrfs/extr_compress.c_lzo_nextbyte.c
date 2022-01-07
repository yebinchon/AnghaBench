
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t inpos; size_t inlen; int error; int * in; } ;
typedef TYPE_1__ lzo_stream ;



__attribute__((used)) static uint8_t lzo_nextbyte(lzo_stream* stream) {
    uint8_t c;

    if (stream->inpos >= stream->inlen) {
        stream->error = 1;
        return 0;
    }

    c = stream->in[stream->inpos];
    stream->inpos++;

    return c;
}
