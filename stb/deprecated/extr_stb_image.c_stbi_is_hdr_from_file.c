
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;
typedef int FILE ;


 int start_file (int *,int *) ;
 int stbi_hdr_test (int *) ;

extern int stbi_is_hdr_from_file(FILE *f)
{

   stbi s;
   start_file(&s,f);
   return stbi_hdr_test(&s);



}
