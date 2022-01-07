
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_id; } ;
typedef TYPE_1__ vlc_es_id_t ;



int
vlc_es_id_GetInputId(vlc_es_id_t *id)
{
    return id->i_id;
}
