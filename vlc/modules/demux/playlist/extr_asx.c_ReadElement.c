
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;


 int free (char*) ;
 char* strdup (char const*) ;
 int vlc_xml_decode (char*) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static bool ReadElement( xml_reader_t *p_xml_reader, char **ppsz_txt )
{
    const char *psz_node = ((void*)0);


    int ret = xml_ReaderNextNode( p_xml_reader, &psz_node );
    if( ret <= 0 )
        return 0;
    free( *ppsz_txt );
    *ppsz_txt = strdup( psz_node );
    vlc_xml_decode( *ppsz_txt );


    xml_ReaderNextNode( p_xml_reader, &psz_node );





    return 1;
}
