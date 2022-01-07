
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int * Render (int *,int *,int) ;

__attribute__((used)) static picture_t *VideoRender(filter_t *filter, picture_t *src)
{
    return Render(filter, src, 0);
}
