
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_format_t ;


 int ORIENT_NORMAL ;
 int video_format_TransformTo (int *,int ) ;

void video_format_ApplyRotation( video_format_t *restrict out,
                                 const video_format_t *restrict in )
{
    *out = *in;

    video_format_TransformTo(out, ORIENT_NORMAL);
}
