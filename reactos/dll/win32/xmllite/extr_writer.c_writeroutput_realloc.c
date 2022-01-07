
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int imalloc; } ;
typedef TYPE_1__ xmlwriteroutput ;


 void* m_realloc (int ,void*,size_t) ;

__attribute__((used)) static inline void *writeroutput_realloc(xmlwriteroutput *output, void *mem, size_t len)
{
    return m_realloc(output->imalloc, mem, len);
}
