
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ es_out_id_t ;


 int vlc_atomic_rc_inc (int *) ;

__attribute__((used)) static void EsHold(es_out_id_t *es)
{
    vlc_atomic_rc_inc(&es->rc);
}
