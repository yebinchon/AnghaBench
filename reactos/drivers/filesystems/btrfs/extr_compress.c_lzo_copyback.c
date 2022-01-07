
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t outpos; int error; int outlen; int * out; } ;
typedef TYPE_1__ lzo_stream ;



__attribute__((used)) static void lzo_copyback(lzo_stream* stream, uint32_t back, int len) {
    if (stream->outpos < back) {
        stream->error = 1;
        return;
    }

    if (stream->outpos + len > stream->outlen) {
        stream->error = 1;
        return;
    }

    do {
        stream->out[stream->outpos] = stream->out[stream->outpos - back];
        stream->outpos++;
        len--;
    } while (len > 0);
}
