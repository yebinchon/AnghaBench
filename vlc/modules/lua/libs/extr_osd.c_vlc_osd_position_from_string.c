
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int vlc_osd_position_from_string( const char *psz_name )
{
    static const struct
    {
        int i_position;
        const char *psz_name;
    } pp_icons[] =
        { { 0, "center" },
          { 130, "left" },
          { 129, "right" },
          { 128, "top" },
          { 131, "bottom" },
          { 128 |130, "top-left" },
          { 128 |129, "top-right" },
          { 131|130, "bottom-left" },
          { 131|129, "bottom-right" },
          { 0, ((void*)0) } };
    int i;
    for( i = 0; pp_icons[i].psz_name; i++ )
    {
        if( !strcmp( psz_name, pp_icons[i].psz_name ) )
            return pp_icons[i].i_position;
    }
    return 0;
}
