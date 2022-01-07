
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef int vlc_family_t ;
typedef int vlc_dictionary_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int family_map; } ;
typedef TYPE_2__ filter_sys_t ;


 char* ToLower (char const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int atoi (char const*) ;
 int free (char*) ;
 int strcasecmp (char*,char const*) ;
 int vlc_dictionary_insert (int *,char*,int *) ;
 int * vlc_dictionary_value_for_key (int *,char*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;

__attribute__((used)) static int Android_ParseAlias( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_dictionary_t *p_dict = &p_sys->family_map;
    vlc_family_t *p_dest = ((void*)0);
    char *psz_name = ((void*)0);
    char *psz_dest = ((void*)0);
    const char *psz_val = ((void*)0);
    const char *psz_attr = ((void*)0);
    int i_weight = 0;
    int i_ret = VLC_SUCCESS;

    while( ( psz_attr = xml_ReaderNextAttr( p_xml, &psz_val ) ) )
    {
        if( !strcasecmp( "weight", psz_attr ) && psz_val && *psz_val )
            i_weight = atoi( psz_val );
        else if( !strcasecmp( "to", psz_attr ) && psz_val && *psz_val )
            psz_dest = ToLower( psz_val );
        else if( !strcasecmp( "name", psz_attr ) && psz_val && *psz_val )
            psz_name = ToLower( psz_val );
    }

    if( !psz_dest || !psz_name )
    {
        i_ret = VLC_EGENERIC;
        goto done;
    }

    p_dest = vlc_dictionary_value_for_key( p_dict, psz_dest );

    if( p_dest && i_weight == 0 )
        if( vlc_dictionary_value_for_key( p_dict, psz_name ) == ((void*)0) )
            vlc_dictionary_insert( p_dict, psz_name, p_dest );

done:
    free( psz_dest );
    free( psz_name );
    return i_ret;
}
