
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int free (char*) ;
 char* vlc_xml_encode (char*) ;

__attribute__((used)) static char *input_xml( input_item_t *p_item, char *(*func)(input_item_t *) )
{
    char *tmp = func( p_item );
    if( tmp == ((void*)0) )
        return ((void*)0);
    char *ret = vlc_xml_encode( tmp );
    free( tmp );
    return ret;
}
