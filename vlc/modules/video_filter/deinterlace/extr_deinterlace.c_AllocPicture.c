
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int * filter_NewPicture (int *) ;

picture_t *AllocPicture( filter_t *filter )
{
    return filter_NewPicture( filter );
}
