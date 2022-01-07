
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;


 int memset (void*,int ,size_t) ;
 void* reader_alloc (int *,size_t) ;

__attribute__((used)) static inline void *reader_alloc_zero(xmlreader *reader, size_t len)
{
    void *ret = reader_alloc(reader, len);
    if (ret)
        memset(ret, 0, len);
    return ret;
}
