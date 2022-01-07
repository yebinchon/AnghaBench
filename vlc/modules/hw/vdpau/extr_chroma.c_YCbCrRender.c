
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int * Render (int *,int *,int) ;
 int * VideoImport (int *,int *) ;

__attribute__((used)) static picture_t *YCbCrRender(filter_t *filter, picture_t *src)
{
    src = VideoImport(filter, src);
    return (src != ((void*)0)) ? Render(filter, src, 1) : ((void*)0);
}
