
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_text ;


 int free (int *) ;
 int free_mpg123_text (int *) ;

__attribute__((used)) static void free_id3_text(mpg123_text **list, size_t *size)
{
 size_t i;
 for(i=0; i<*size; ++i) free_mpg123_text(&((*list)[i]));

 free(*list);
 *list = ((void*)0);
 *size = 0;
}
