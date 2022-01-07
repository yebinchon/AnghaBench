
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pf_catalog_add; int pf_catalog_load; } ;
typedef TYPE_1__ xml_t ;
typedef int vlc_object_t ;


 int CatalogAdd ;
 int CatalogLoad ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_WITH_THREAD ;
 int lock ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int xmlHasFeature (int ) ;
 int xmlInitParser () ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    xml_t *p_xml = (xml_t *)p_this;

    if( !xmlHasFeature( XML_WITH_THREAD ) )
        return VLC_EGENERIC;

    vlc_mutex_lock( &lock );
    xmlInitParser();
    vlc_mutex_unlock( &lock );

    p_xml->pf_catalog_load = CatalogLoad;
    p_xml->pf_catalog_add = CatalogAdd;

    return VLC_SUCCESS;
}
