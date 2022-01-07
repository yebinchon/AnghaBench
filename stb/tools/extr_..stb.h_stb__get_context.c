
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb__chunked ;
typedef int stb__alloc ;


 int STB__chunked ;
 int stb__alloc_global ;
 int stb__identify (void*) ;
 int * stb__parent (int *) ;

__attribute__((used)) static stb__alloc * stb__get_context(void *context)
{
   if (context == ((void*)0)) {
      return &stb__alloc_global;
   } else {
      int u = stb__identify(context);

      if (u == STB__chunked) {
         stb__chunked *s = (stb__chunked *) context - 1;
         return stb__parent(s);
      } else {
         return (stb__alloc *) context - 1;
      }
   }
}
