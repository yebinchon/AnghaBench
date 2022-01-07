
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_es_id_t ;


 int EsRelease (int ) ;
 int vlc_es_id_get_out (int *) ;

void
vlc_es_id_Release(vlc_es_id_t *id)
{
    EsRelease(vlc_es_id_get_out(id));
}
