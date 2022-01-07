
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ decoder_t ;
typedef int av1_sys_t ;


 int PacketizeFlush (TYPE_1__*) ;
 int free (int *) ;

__attribute__((used)) static void Close(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t*)p_this;
    av1_sys_t *p_sys = p_dec->p_sys;

    PacketizeFlush(p_dec);

    free(p_sys);
}
