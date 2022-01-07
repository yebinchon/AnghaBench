
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int orientation; } ;
struct TYPE_5__ {scalar_t__ i_cat; TYPE_1__ video; } ;
typedef TYPE_2__ es_format_t ;
typedef enum video_orientation_t { ____Placeholder_video_orientation_t } video_orientation_t ;


 int ATAN (int,int) ;
 int ORIENT_NORMAL ;



 scalar_t__ VIDEO_ES ;

__attribute__((used)) static void matrix_apply_rotation(es_format_t *fmt, uint32_t mvhd_matrix[9])
{
    enum video_orientation_t orientation = ORIENT_NORMAL;
    if (fmt->i_cat == VIDEO_ES)
        orientation = fmt->video.orientation;







    switch (orientation) {
    case 128: do { mvhd_matrix[1] = ((uint32_t)(1)) << 16; mvhd_matrix[0] = ((uint32_t)(0)) << 16; } while(0); break;
    case 130: do { mvhd_matrix[1] = ((uint32_t)(0)) << 16; mvhd_matrix[0] = ((uint32_t)(-1)) << 16; } while(0); break;
    case 129: do { mvhd_matrix[1] = ((uint32_t)(-1)) << 16; mvhd_matrix[0] = ((uint32_t)(0)) << 16; } while(0); break;
    default: do { mvhd_matrix[1] = ((uint32_t)(0)) << 16; mvhd_matrix[0] = ((uint32_t)(1)) << 16; } while(0); break;
    }

    mvhd_matrix[3] = mvhd_matrix[0] ? 0 : 0x10000;
    mvhd_matrix[4] = mvhd_matrix[1] ? 0 : 0x10000;
}
