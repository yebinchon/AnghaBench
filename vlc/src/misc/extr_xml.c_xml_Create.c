
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_module; } ;
typedef TYPE_1__ xml_t ;
typedef int vlc_object_t ;


 int module_need (TYPE_1__*,char*,int *,int) ;
 int msg_Err (int *,char*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

xml_t *xml_Create( vlc_object_t *p_this )
{
    xml_t *p_xml;

    p_xml = vlc_custom_create( p_this, sizeof( *p_xml ), "xml" );

    p_xml->p_module = module_need( p_xml, "xml", ((void*)0), 0 );
    if( !p_xml->p_module )
    {
        vlc_object_delete(p_xml);
        msg_Err( p_this, "XML provider not found" );
        return ((void*)0);
    }

    return p_xml;
}
