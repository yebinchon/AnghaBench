
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_11__ {char const* psz_name; int p_fonts; } ;
typedef TYPE_1__ vlc_family_t ;
typedef int vlc_dictionary_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_13__ {int fallback_map; int family_map; int p_families; } ;
typedef TYPE_3__ filter_sys_t ;


 int Android_ParseFont (TYPE_2__*,int *,TYPE_1__*) ;
 int * FB_LIST_DEFAULT ;
 int FB_NAME ;
 TYPE_1__* NewFamily (TYPE_2__*,char const*,int *,int *,int *) ;
 char* ToLower (char const*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;


 int free (char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int strcasecmp (char*,char const*) ;
 int strcasestr (char const*,int ) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* vlc_dictionary_value_for_key (int *,char*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int Android_Nougat_ParseFamily( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_dictionary_t *p_dict = &p_sys->family_map;
    vlc_family_t *p_family = ((void*)0);
    const char *psz_val = ((void*)0);
    const char *psz_attr = ((void*)0);
    const char *psz_name = ((void*)0);
    int i_type = 0;

    while( ( psz_attr = xml_ReaderNextAttr( p_xml, &psz_val ) ) )
    {
        if( !strcasecmp( "name", psz_attr ) && psz_val && *psz_val )
        {
            psz_name = psz_val;
            break;
        }
    }

    if( psz_name && *psz_name )
    {




        char *psz_lc = ToLower( psz_name );
        if( unlikely( !psz_lc ) )
            return VLC_ENOMEM;

        p_family = vlc_dictionary_value_for_key( p_dict, psz_lc );

        free( psz_lc );
    }

    if( p_family == ((void*)0) )
    {







        p_family = NewFamily( p_filter, psz_name, &p_sys->p_families,
                              &p_sys->family_map, ((void*)0) );

        if( unlikely( !p_family ) )
            return VLC_ENOMEM;
    }

    while( ( i_type = xml_ReaderNextNode( p_xml, &psz_val ) ) > 0 )
    {
        switch( i_type )
        {
        case 128:
            if( !strcasecmp( "font", psz_val ) )
                if( Android_ParseFont( p_filter, p_xml, p_family ) == VLC_ENOMEM )
                    return VLC_ENOMEM;
            break;

        case 129:
            if( !strcasecmp( "family", psz_val ) )
            {
                if( strcasestr( p_family->psz_name, FB_NAME ) )
                {




                    vlc_family_t *p_fallback =
                        NewFamily( p_filter, p_family->psz_name,
                                   ((void*)0), &p_sys->fallback_map, FB_LIST_DEFAULT );

                    if( unlikely( !p_fallback ) )
                        return VLC_ENOMEM;

                    p_fallback->p_fonts = p_family->p_fonts;
                }

                return VLC_SUCCESS;
            }
            break;
        }
    }

    msg_Warn( p_filter, "Android_ParseFamily: Corrupt font configuration file" );
    return VLC_EGENERIC;
}
