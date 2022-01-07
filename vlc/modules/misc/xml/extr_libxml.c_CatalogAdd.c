
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_t ;


 int VLC_UNUSED (int *) ;
 int xmlCatalogAdd (unsigned char*,unsigned char*,unsigned char*) ;

__attribute__((used)) static void CatalogAdd( xml_t *p_xml, const char *psz_arg1,
                          const char *psz_arg2, const char *psz_filename )
{
    VLC_UNUSED(p_xml);
    xmlCatalogAdd( (unsigned char*)psz_arg1, (unsigned char*)psz_arg2,
        (unsigned char*)psz_filename );
}
