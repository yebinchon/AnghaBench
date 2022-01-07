
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_transform_t ;


 int ORIENT_IS_MIRROR (int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void transform_GetBasicOps( video_transform_t transform,
                                   unsigned *restrict angle,
                                   bool *restrict hflip )
{
    *hflip = ORIENT_IS_MIRROR(transform);

    switch ( transform )
    {
        case 130:
        case 129:
            *angle = 90;
            break;
        case 132:
        case 128:
            *angle = 180;
            break;
        case 131:
        case 135:
            *angle = 270;
            break;
        case 134:
        case 133:
            *angle = 0;
            break;
        default:
            vlc_assert_unreachable ();
    }
}
