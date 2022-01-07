
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_8__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_9__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_10__ {int fd; } ;
typedef TYPE_3__ aout_sys_t ;


 int block_Release (TYPE_1__*) ;
 int errno ;
 int msg_Err (TYPE_2__*,char*,int ) ;
 int vlc_strerror_c (int ) ;
 scalar_t__ write (int,int ,scalar_t__) ;

__attribute__((used)) static void Play(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    int fd = sys->fd;

    while (block->i_buffer > 0)
    {
        ssize_t bytes = write (fd, block->p_buffer, block->i_buffer);
        if (bytes >= 0)
        {
            block->p_buffer += bytes;
            block->i_buffer -= bytes;
        }
        else
            msg_Err (aout, "cannot write samples: %s", vlc_strerror_c(errno));
    }
    block_Release (block);
    (void) date;
}
