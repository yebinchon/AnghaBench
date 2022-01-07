
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int imalloc; } ;
typedef TYPE_1__ xmlwriter ;


 void* m_alloc (int ,size_t) ;

__attribute__((used)) static inline void *writer_alloc(xmlwriter *writer, size_t len)
{
    return m_alloc(writer->imalloc, len);
}
