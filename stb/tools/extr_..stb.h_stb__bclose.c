
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; scalar_t__ various; } ;
typedef TYPE_1__ stbfile ;


 int free (int ) ;

__attribute__((used)) static void stb__bclose(stbfile *s)
{
   if (s->various)
      free(s->buffer);
}
