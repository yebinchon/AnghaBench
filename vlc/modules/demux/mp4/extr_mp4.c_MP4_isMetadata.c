
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_use_flags; } ;
typedef TYPE_1__ mp4_track_t ;


 int USEAS_CHAPTERS ;
 int USEAS_TIMECODE ;

__attribute__((used)) static bool MP4_isMetadata( const mp4_track_t *tk )
{
    return tk->i_use_flags & (USEAS_CHAPTERS|USEAS_TIMECODE);
}
