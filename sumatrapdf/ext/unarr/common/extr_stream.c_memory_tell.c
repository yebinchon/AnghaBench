
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStream {int offset; } ;
typedef int off64_t ;



__attribute__((used)) static off64_t memory_tell(void *data)
{
    struct MemoryStream *stm = data;
    return stm->offset;
}
