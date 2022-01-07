
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int vlc_family_t ;
typedef int filter_t ;


 int ANDROID_FONT_PATH ;
 int NewFont (char*,int ,int,int,int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int XML_READER_TEXT ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int atoi (char const*) ;
 int msg_Warn (int *,char*) ;
 int strcasecmp (char*,char const*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int Android_ParseFont( filter_t *p_filter, xml_reader_t *p_xml,
                              vlc_family_t *p_family )
{
    bool b_bold = 0;
    bool b_italic = 0;
    const char *psz_val = ((void*)0);
    const char *psz_attr = ((void*)0);
    int i_type = 0;
    int i_weight = 0;

    while( ( psz_attr = xml_ReaderNextAttr( p_xml, &psz_val ) ) )
    {
        if( !strcasecmp( "weight", psz_attr ) && psz_val && *psz_val )
            i_weight = atoi( psz_val );
        else if( !strcasecmp( "style", psz_attr ) && psz_val && *psz_val )
            if( !strcasecmp( "italic", psz_val ) )
                b_italic = 1;
    }

    if( i_weight == 700 )
        b_bold = 1;

    i_type = xml_ReaderNextNode( p_xml, &psz_val );

    if( i_type != XML_READER_TEXT || !psz_val || !*psz_val )
    {
        msg_Warn( p_filter, "Android_ParseFont: no file name" );
        return VLC_EGENERIC;
    }

    char *psz_fontfile;




    if( i_weight == 400 || i_weight == 700 )
        if( asprintf( &psz_fontfile, "%s/%s", ANDROID_FONT_PATH, psz_val ) < 0
         || !NewFont( psz_fontfile, 0, b_bold, b_italic, p_family ) )
            return VLC_ENOMEM;

    return VLC_SUCCESS;
}
