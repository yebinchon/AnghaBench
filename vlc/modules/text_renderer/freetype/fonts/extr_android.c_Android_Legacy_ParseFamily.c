
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_12__ {char* psz_name; int p_fonts; } ;
typedef TYPE_1__ vlc_family_t ;
typedef int vlc_dictionary_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_14__ {int fallback_map; int family_map; int p_families; } ;
typedef TYPE_3__ filter_sys_t ;


 int ANDROID_FONT_PATH ;
 int * FB_LIST_DEFAULT ;
 int FB_NAME ;
 TYPE_1__* NewFamily (TYPE_2__*,char*,int *,int *,int *) ;
 int NewFont (char*,int ,int,int,TYPE_1__*) ;
 char* ToLower (char const*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;


 int XML_READER_TEXT ;
 int asprintf (char**,char*,int ,char const*) ;
 int free (char*) ;
 TYPE_1__* kVLCDictionaryNotFound ;
 int msg_Warn (TYPE_2__*,char*) ;
 int strcasecmp (char*,char const*) ;
 int strcasestr (char*,int ) ;
 int unlikely (int) ;
 int vlc_dictionary_insert (int *,char*,TYPE_1__*) ;
 TYPE_1__* vlc_dictionary_value_for_key (int *,char*) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int Android_Legacy_ParseFamily( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_dictionary_t *p_dict = &p_sys->family_map;
    vlc_family_t *p_family = ((void*)0);
    char *psz_lc = ((void*)0);
    int i_counter = 0;
    bool b_bold = 0;
    bool b_italic = 0;
    const char *p_node = ((void*)0);
    int i_type = 0;

    while( ( i_type = xml_ReaderNextNode( p_xml, &p_node ) ) > 0 )
    {
        switch( i_type )
        {
        case 128:
            if( !strcasecmp( "name", p_node ) )
            {
                i_type = xml_ReaderNextNode( p_xml, &p_node );

                if( i_type != XML_READER_TEXT || !p_node || !*p_node )
                {
                    msg_Warn( p_filter, "Android_ParseFamily: empty name" );
                    continue;
                }

                psz_lc = ToLower( p_node );
                if( unlikely( !psz_lc ) )
                    return VLC_ENOMEM;

                if( !p_family )
                {
                    p_family = vlc_dictionary_value_for_key( p_dict, psz_lc );
                    if( p_family == kVLCDictionaryNotFound )
                    {
                        p_family =
                            NewFamily( p_filter, psz_lc, &p_sys->p_families, ((void*)0), ((void*)0) );

                        if( unlikely( !p_family ) )
                        {
                            free( psz_lc );
                            return VLC_ENOMEM;
                        }

                    }
                }

                if( vlc_dictionary_value_for_key( p_dict, psz_lc ) == kVLCDictionaryNotFound )
                    vlc_dictionary_insert( p_dict, psz_lc, p_family );
                free( psz_lc );
            }






            else if( !strcasecmp( "file", p_node ) )
            {
                i_type = xml_ReaderNextNode( p_xml, &p_node );

                if( i_type != XML_READER_TEXT || !p_node || !*p_node )
                {
                    ++i_counter;
                    continue;
                }

                if( !p_family )
                    p_family = NewFamily( p_filter, ((void*)0), &p_sys->p_families,
                                          &p_sys->family_map, ((void*)0) );

                if( unlikely( !p_family ) )
                    return VLC_ENOMEM;

                switch( i_counter )
                {
                case 0:
                    b_bold = 0;
                    b_italic = 0;
                    break;
                case 1:
                    b_bold = 1;
                    b_italic = 0;
                    break;
                case 2:
                    b_bold = 0;
                    b_italic = 1;
                    break;
                case 3:
                    b_bold = 1;
                    b_italic = 1;
                    break;
                default:
                    msg_Warn( p_filter, "Android_ParseFamily: too many files" );
                    return VLC_EGENERIC;
                }

                char *psz_fontfile = ((void*)0);
                if( asprintf( &psz_fontfile, "%s/%s", ANDROID_FONT_PATH, p_node ) < 0
                 || !NewFont( psz_fontfile, 0, b_bold, b_italic, p_family ) )
                    return VLC_ENOMEM;

                ++i_counter;
            }
            break;

        case 129:
            if( !strcasecmp( "family", p_node ) )
            {
                if( !p_family )
                {
                    msg_Warn( p_filter, "Android_ParseFamily: empty family" );
                    return VLC_EGENERIC;
                }





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

    msg_Warn( p_filter, "Android_ParseOldFamily: Corrupt font configuration file" );
    return VLC_EGENERIC;
}
