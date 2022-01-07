
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_handle ;


 int free_comment (int *) ;
 int free_extra (int *) ;
 int free_picture (int *) ;
 int free_text (int *) ;

void exit_id3(mpg123_handle *fr)
{
 free_picture(fr);
 free_comment(fr);
 free_extra(fr);
 free_text(fr);
}
