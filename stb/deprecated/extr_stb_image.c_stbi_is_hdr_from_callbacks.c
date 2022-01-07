
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_io_callbacks ;
typedef int stbi ;


 int start_callbacks (int *,int *,void*) ;
 int stbi_hdr_test (int *) ;

extern int stbi_is_hdr_from_callbacks(stbi_io_callbacks const *clbk, void *user)
{

   stbi s;
   start_callbacks(&s, (stbi_io_callbacks *) clbk, user);
   return stbi_hdr_test(&s);



}
