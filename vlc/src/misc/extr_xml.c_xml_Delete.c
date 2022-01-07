
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_module; } ;
typedef TYPE_1__ xml_t ;


 int module_unneed (TYPE_1__*,int ) ;
 int vlc_object_delete (TYPE_1__*) ;

void xml_Delete( xml_t *p_xml )
{
    module_unneed( p_xml, p_xml->p_module );
    vlc_object_delete(p_xml);
}
