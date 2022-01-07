
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_size; } ;
typedef TYPE_1__ vlc_a52_header_t ;
typedef int uint8_t ;


 int MLP_HEADER_SIZE ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ vlc_a52_header_Parse (TYPE_1__*,int const*,int ) ;

__attribute__((used)) static int SyncInfoDolby( const uint8_t *p_buf )
{
    vlc_a52_header_t a52;
    if( vlc_a52_header_Parse( &a52, p_buf, MLP_HEADER_SIZE ) == VLC_SUCCESS )
        return a52.i_size;
    else
        return 0;
}
