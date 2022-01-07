
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void stbi_image_free(void *retval_from_stbi_load)
{
   free(retval_from_stbi_load);
}
