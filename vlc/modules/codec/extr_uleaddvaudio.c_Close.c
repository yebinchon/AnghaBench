
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int p_sys; } ;
typedef TYPE_1__ decoder_t ;


 int free (int ) ;

__attribute__((used)) static void Close(vlc_object_t *object)
{
    decoder_t *dec = (decoder_t *)object;

    free(dec->p_sys);
}
