
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* psz_mime; scalar_t__* psz_ext; } ;


 TYPE_1__* ext_mime ;
 int strcasecmp (scalar_t__*,char*) ;
 char* strrchr (char const*,char) ;

const char *vlc_mime_Ext2Mime( const char *psz_url )
{

    char *psz_ext;

    psz_ext = strrchr( psz_url, '.' );
    if( psz_ext )
    {
        int i;

        for( i = 0; ext_mime[i].psz_ext[0] ; i++ )
        {
            if( !strcasecmp( ext_mime[i].psz_ext, psz_ext ) )
            {
                return ext_mime[i].psz_mime;
            }
        }
    }
    return "application/octet-stream";
}
