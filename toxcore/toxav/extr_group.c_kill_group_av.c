
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ audio_encoder; } ;
typedef TYPE_1__ Group_AV ;


 int free (TYPE_1__*) ;
 int opus_encoder_destroy (scalar_t__) ;

__attribute__((used)) static void kill_group_av(Group_AV *group_av)
{
    if (group_av->audio_encoder) {
        opus_encoder_destroy(group_av->audio_encoder);
    }

    free(group_av);
}
