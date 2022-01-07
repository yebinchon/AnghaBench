
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; scalar_t__ ptr; } ;
typedef TYPE_1__ stbfile ;



__attribute__((used)) static void stb__aclose(stbfile *f)
{
   *(unsigned char **) f->ptr = f->buffer;
}
