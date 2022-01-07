
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {size_t size; int* data; } ;
typedef TYPE_1__ Jbig2WordStreamBuf ;
typedef int Jbig2WordStream ;



__attribute__((used)) static int
jbig2_word_stream_buf_get_next_word(Jbig2WordStream *self, size_t offset, uint32_t *word)
{
    Jbig2WordStreamBuf *z = (Jbig2WordStreamBuf *) self;
    uint32_t val = 0;
    int ret = 0;

    if (self == ((void*)0) || word == ((void*)0))
        return -1;
    if (offset >= z->size) {
        *word = 0;
        return 0;
    }

    if (offset < z->size) {
        val |= z->data[offset] << 24;
        ret++;
    }
    if (offset + 1 < z->size) {
        val |= z->data[offset + 1] << 16;
        ret++;
    }
    if (offset + 2 < z->size) {
        val |= z->data[offset + 2] << 8;
        ret++;
    }
    if (offset + 3 < z->size) {
        val |= z->data[offset + 3];
        ret++;
    }
    *word = val;
    return ret;
}
