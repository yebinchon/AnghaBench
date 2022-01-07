
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int Adjust_UpdateVAFilterParams ;
 int * Filter (int *,int *,int ,int *,int *) ;
 int picture_Release (int *) ;

__attribute__((used)) static picture_t *
Adjust(filter_t * filter, picture_t * src)
{
    picture_t *const dest =
        Filter(filter, src, Adjust_UpdateVAFilterParams, ((void*)0), ((void*)0));
    picture_Release(src);
    return dest;
}
