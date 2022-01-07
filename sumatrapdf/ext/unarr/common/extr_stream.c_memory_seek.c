
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStream {size_t offset; size_t length; } ;
typedef scalar_t__ off64_t ;


 int SEEK_CUR ;
 int SEEK_END ;

__attribute__((used)) static bool memory_seek(void *data, off64_t offset, int origin)
{
    struct MemoryStream *stm = data;
    if (origin == SEEK_CUR)
        offset += stm->offset;
    else if (origin == SEEK_END)
        offset += stm->length;
    if (offset < 0 || offset > (off64_t)stm->length || (size_t)offset > stm->length)
        return 0;
    stm->offset = (size_t)offset;
    return 1;
}
