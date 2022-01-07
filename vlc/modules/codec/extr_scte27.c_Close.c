
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {struct TYPE_5__* segment_buffer; } ;
typedef TYPE_2__ decoder_sys_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void Close(vlc_object_t *object)
{
    decoder_t *dec = (decoder_t *)object;
    decoder_sys_t *sys = dec->p_sys;

    free(sys->segment_buffer);
    free(sys);
}
