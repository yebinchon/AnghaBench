
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_transform_t ;
typedef int video_orientation_t ;
struct TYPE_4__ {int orientation; } ;
typedef TYPE_1__ video_format_t ;


 int video_format_GetTransform (int ,int ) ;
 int video_format_TransformBy (TYPE_1__*,int ) ;

void video_format_TransformTo( video_format_t *restrict fmt,
                               video_orientation_t dst_orientation )
{
    video_transform_t transform = video_format_GetTransform(fmt->orientation,
                                                            dst_orientation);
    video_format_TransformBy(fmt, transform);
}
