
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** p; } ;
typedef TYPE_1__ stb_ps_bucket ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static stb_ps_bucket * stb_bucket_create3(void **v)
{
   stb_ps_bucket *b = (stb_ps_bucket*) malloc(sizeof(*b));
   b->p[0] = v[0];
   b->p[1] = v[1];
   b->p[2] = v[2];
   b->p[3] = ((void*)0);
   return b;
}
