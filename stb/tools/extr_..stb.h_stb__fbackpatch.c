
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ stbfile ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int ,unsigned int,int ) ;
 int fwrite (void*,int,unsigned int,int ) ;

__attribute__((used)) static void stb__fbackpatch(stbfile *f, unsigned int where, void *buffer, unsigned int len)
{
   fseek(f->f, where, SEEK_SET);
   fwrite(buffer, 1, len, f->f);
   fseek(f->f, 0, SEEK_END);
}
