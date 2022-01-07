
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_text ;


 int init_mpg123_text (int *) ;
 int * safe_realloc (int *,int) ;

__attribute__((used)) static mpg123_text *add_id3_text(mpg123_text **list, size_t *size)
{
 mpg123_text *x = safe_realloc(*list, sizeof(mpg123_text)*(*size+1));
 if(x == ((void*)0)) return ((void*)0);

 *list = x;
 *size += 1;
 init_mpg123_text(&((*list)[*size-1]));

 return &((*list)[*size-1]);
}
