
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_10__ {int (* flush ) (TYPE_2__*) ;int (* pause ) (TYPE_2__*,int,int ) ;} ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_9__ {scalar_t__ i_format; } ;
struct TYPE_11__ {TYPE_1__ mixer_format; } ;
typedef TYPE_3__ aout_owner_t ;


 TYPE_3__* aout_owner (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int,int ) ;
 int stub2 (TYPE_2__*) ;

void aout_DecChangePause (audio_output_t *aout, bool paused, vlc_tick_t date)
{
    aout_owner_t *owner = aout_owner (aout);

    if (owner->mixer_format.i_format)
    {
        if (aout->pause != ((void*)0))
            aout->pause(aout, paused, date);
        else if (paused)
            aout->flush(aout);
    }
}
