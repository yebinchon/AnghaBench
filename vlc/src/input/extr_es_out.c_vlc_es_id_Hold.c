
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_es_id_t ;


 int EsHold (int ) ;
 int vlc_es_id_get_out (int *) ;

vlc_es_id_t *
vlc_es_id_Hold(vlc_es_id_t *id)
{
    EsHold(vlc_es_id_get_out(id));
    return id;
}
