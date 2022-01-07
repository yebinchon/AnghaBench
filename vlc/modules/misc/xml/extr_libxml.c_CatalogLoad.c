
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_t ;


 int VLC_UNUSED (int *) ;
 int xmlInitializeCatalog () ;
 int xmlLoadCatalog (char const*) ;

__attribute__((used)) static void CatalogLoad( xml_t *p_xml, const char *psz_filename )
{
    VLC_UNUSED(p_xml);
    if( !psz_filename ) xmlInitializeCatalog();
    else xmlLoadCatalog( psz_filename );
}
