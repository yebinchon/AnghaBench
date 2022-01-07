
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;
typedef int FILE ;


 int start_callbacks (int *,int *,void*) ;
 int stbi_stdio_callbacks ;

__attribute__((used)) static void start_file(stbi *s, FILE *f)
{
   start_callbacks(s, &stbi_stdio_callbacks, (void *) f);
}
