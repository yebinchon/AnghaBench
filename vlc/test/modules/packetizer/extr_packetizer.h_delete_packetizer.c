
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_description; int fmt_out; int fmt_in; scalar_t__ p_module; } ;
typedef TYPE_1__ decoder_t ;


 int es_format_Clean (int *) ;
 int module_unneed (TYPE_1__*,scalar_t__) ;
 int vlc_meta_Delete (scalar_t__) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static void delete_packetizer(decoder_t *p_pack)
{
    if(p_pack->p_module)
        module_unneed(p_pack, p_pack->p_module);
    es_format_Clean(&p_pack->fmt_in);
    es_format_Clean(&p_pack->fmt_out);
    if(p_pack->p_description)
        vlc_meta_Delete(p_pack->p_description);
    vlc_object_delete(p_pack);
}
