
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStream {size_t length; scalar_t__ offset; void const* data; } ;
typedef int ar_stream ;


 int * ar_open_stream (struct MemoryStream*,int ,int ,int ,int ) ;
 struct MemoryStream* malloc (int) ;
 int memory_close ;
 int memory_read ;
 int memory_seek ;
 int memory_tell ;

ar_stream *ar_open_memory(const void *data, size_t datalen)
{
    struct MemoryStream *stm = malloc(sizeof(struct MemoryStream));
    if (!stm)
        return ((void*)0);
    stm->data = data;
    stm->length = datalen;
    stm->offset = 0;
    return ar_open_stream(stm, memory_close, memory_read, memory_seek, memory_tell);
}
