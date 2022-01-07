
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_handle ;


 int frame_init_par (int *,int *) ;

void frame_init(mpg123_handle *fr)
{
 frame_init_par(fr, ((void*)0));
}
