
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* backpatch ) (TYPE_1__*,unsigned int,void*,unsigned int) ;} ;
typedef TYPE_1__ stbfile ;


 int stub1 (TYPE_1__*,unsigned int,void*,unsigned int) ;

void stb_backpatch(stbfile *f, unsigned int tell, void *buffer, unsigned int len)
{
   f->backpatch(f,tell,buffer,len);
}
