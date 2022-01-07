
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; } ;
typedef TYPE_1__ stbfile ;


 int memcpy (scalar_t__,void*,unsigned int) ;

__attribute__((used)) static void stb__abackpatch(stbfile *f, unsigned int where, void *data, unsigned int len)
{
   memcpy(f->buffer+where, data, len);
}
