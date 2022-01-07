
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int audio_output_t ;
typedef int aout_owner_t ;
struct TYPE_2__ {int owner; } ;
typedef TYPE_1__ aout_instance_t ;



__attribute__((used)) static inline aout_owner_t *aout_owner (audio_output_t *aout)
{
    return &((aout_instance_t *)aout)->owner;
}
