
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_picture ;


 int init_mpg123_picture (int *) ;
 int * safe_realloc (int *,int) ;

__attribute__((used)) static mpg123_picture *add_id3_picture(mpg123_picture **list, size_t *size)
{
 mpg123_picture *x = safe_realloc(*list, sizeof(mpg123_picture)*(*size+1));
 if(x == ((void*)0)) return ((void*)0);

 *list = x;
 *size += 1;
 init_mpg123_picture(&((*list)[*size-1]));

 return &((*list)[*size-1]);
}
