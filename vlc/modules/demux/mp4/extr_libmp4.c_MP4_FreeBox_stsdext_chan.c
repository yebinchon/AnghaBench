
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int layout; } ;
struct TYPE_5__ {TYPE_3__* p_chan; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;
typedef TYPE_3__ MP4_Box_data_chan_t ;


 int CoreAudio_Layout_Clean (int *) ;

__attribute__((used)) static void MP4_FreeBox_stsdext_chan( MP4_Box_t *p_box )
{
    MP4_Box_data_chan_t *p_chan = p_box->data.p_chan;
    CoreAudio_Layout_Clean( &p_chan->layout );
}
