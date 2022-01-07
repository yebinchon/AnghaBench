
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long pos; unsigned long long size; } ;
typedef TYPE_1__ buffWrapper_t ;





 int assert (int ) ;

__attribute__((used)) static int ZSTD_seekable_seek_buff(void* opaque, long long offset, int origin)
{
    buffWrapper_t* const buff = (buffWrapper_t*) opaque;
    unsigned long long newOffset;
    switch (origin) {
    case 128:
        newOffset = offset;
        break;
    case 130:
        newOffset = (unsigned long long)buff->pos + offset;
        break;
    case 129:
        newOffset = (unsigned long long)buff->size + offset;
        break;
    default:
        assert(0);
    }
    if (newOffset > buff->size) {
        return -1;
    }
    buff->pos = newOffset;
    return 0;
}
