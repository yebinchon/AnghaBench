
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi ;


 int STBI_NOTUSED (int) ;
 int start_mem (int *,int const*,int) ;
 int stbi_hdr_test (int *) ;

int stbi_is_hdr_from_memory(stbi_uc const *buffer, int len)
{

   stbi s;
   start_mem(&s,buffer,len);
   return stbi_hdr_test(&s);





}
