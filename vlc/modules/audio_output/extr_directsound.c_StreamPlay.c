
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int block_t ;
struct TYPE_4__ {int sys; } ;
typedef TYPE_1__ aout_stream_t ;
typedef int HRESULT ;


 int Play (int ,int ,int *) ;
 int VLC_OBJECT (TYPE_1__*) ;

__attribute__((used)) static HRESULT StreamPlay( aout_stream_t *s, block_t *block, vlc_tick_t date )
{
    (void) date;
    return Play( VLC_OBJECT(s), s->sys, block );
}
