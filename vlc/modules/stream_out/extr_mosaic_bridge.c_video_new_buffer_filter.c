
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_4__ {int video; } ;
struct TYPE_5__ {TYPE_1__ fmt_out; } ;
typedef TYPE_2__ filter_t ;


 int * picture_NewFromFormat (int *) ;

__attribute__((used)) static picture_t *video_new_buffer_filter( filter_t *p_filter )
{
    return picture_NewFromFormat( &p_filter->fmt_out.video );
}
