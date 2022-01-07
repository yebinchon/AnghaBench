
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; scalar_t__ size; scalar_t__ ptr; } ;
typedef TYPE_1__ buffWrapper_t ;
typedef int BYTE ;


 int memcpy (void*,int const*,size_t) ;

__attribute__((used)) static int ZSTD_seekable_read_buff(void* opaque, void* buffer, size_t n)
{
    buffWrapper_t* buff = (buffWrapper_t*) opaque;
    if (buff->pos + n > buff->size) return -1;
    memcpy(buffer, (const BYTE*)buff->ptr + buff->pos, n);
    buff->pos += n;
    return 0;
}
