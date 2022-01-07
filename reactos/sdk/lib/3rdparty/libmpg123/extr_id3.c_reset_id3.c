
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_handle ;


 int exit_id3 (int *) ;
 int init_id3 (int *) ;

void reset_id3(mpg123_handle *fr)
{
 exit_id3(fr);
 init_id3(fr);
}
