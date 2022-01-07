
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_transform_t ;


 int TRANSFORM_ANTI_TRANSPOSE ;
 int TRANSFORM_HFLIP ;
 int TRANSFORM_IDENTITY ;
 int TRANSFORM_R180 ;
 int TRANSFORM_R270 ;
 int TRANSFORM_R90 ;
 int TRANSFORM_TRANSPOSE ;
 int TRANSFORM_VFLIP ;

__attribute__((used)) static video_transform_t transform_FromBasicOps( unsigned angle, bool hflip )
{
    switch ( angle )
    {
        case 90:
            return hflip ? TRANSFORM_TRANSPOSE : TRANSFORM_R90;
        case 180:
            return hflip ? TRANSFORM_VFLIP : TRANSFORM_R180;
        case 270:
            return hflip ? TRANSFORM_ANTI_TRANSPOSE : TRANSFORM_R270;
        default:
            return hflip ? TRANSFORM_HFLIP : TRANSFORM_IDENTITY;
    }
}
