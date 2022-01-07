
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* putdata ) (TYPE_1__*,void*,unsigned int) ;} ;
typedef TYPE_1__ stbfile ;


 unsigned int stub1 (TYPE_1__*,void*,unsigned int) ;

unsigned int stb_putdata(stbfile *f, void *buffer, unsigned int len)
{
   return f->putdata(f, buffer, len);
}
