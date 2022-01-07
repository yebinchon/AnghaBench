
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; } ;
typedef TYPE_1__ lzo_stream ;


 int lzo_nextbyte (TYPE_1__*) ;

__attribute__((used)) static int lzo_len(lzo_stream* stream, int byte, int mask) {
    int len = byte & mask;

    if (len == 0) {
        while (!(byte = lzo_nextbyte(stream))) {
            if (stream->error) return 0;

            len += 255;
        }

        len += mask + byte;
    }

    return len;
}
