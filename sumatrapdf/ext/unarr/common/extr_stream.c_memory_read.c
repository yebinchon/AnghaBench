
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStream {size_t length; size_t offset; size_t data; } ;


 int memcpy (void*,size_t,size_t) ;

__attribute__((used)) static size_t memory_read(void *data, void *buffer, size_t count)
{
    struct MemoryStream *stm = data;
    if (count > stm->length - stm->offset)
        count = stm->length - stm->offset;
    memcpy(buffer, stm->data + stm->offset, count);
    stm->offset += count;
    return count;
}
