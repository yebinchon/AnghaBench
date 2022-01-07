
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uinta ;
typedef int stb__alloc_type ;



__attribute__((used)) static stb__alloc_type stb__identify(void *p)
{
   void **q = (void **) p;
   return (stb__alloc_type) ((stb_uinta) q[-1] & 3);
}
