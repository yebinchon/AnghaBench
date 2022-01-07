
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct stat {int dummy; } ;
typedef int input_item_t ;
typedef int FILE ;


 int ArtCacheCreateDir (char*) ;
 char* ArtCacheName (int *,char const*) ;
 char* GetDirByItemUIDs (char*) ;
 char* GetFileByItemUID (char*,char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 size_t fwrite (void const*,int,size_t,int *) ;
 char* input_item_GetInfo (int *,char*,char*) ;
 int input_item_SetArtURL (int *,char*) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Err (int *,char*,char*,int ) ;
 int * vlc_fopen (char*,char*) ;
 char* vlc_path2uri (char*,char*) ;
 int vlc_stat (char*,struct stat*) ;
 int vlc_strerror_c (int ) ;

int input_SaveArt( vlc_object_t *obj, input_item_t *p_item,
                   const void *data, size_t length, const char *psz_type )
{
    char *psz_filename = ArtCacheName( p_item, psz_type );

    if( !psz_filename )
        return VLC_EGENERIC;

    char *psz_uri = vlc_path2uri( psz_filename, "file" );
    if( !psz_uri )
    {
        free( psz_filename );
        return VLC_EGENERIC;
    }


    struct stat s;
    if( !vlc_stat( psz_filename, &s ) )
    {
        input_item_SetArtURL( p_item, psz_uri );
        free( psz_filename );
        free( psz_uri );
        return VLC_SUCCESS;
    }


    FILE *f = vlc_fopen( psz_filename, "wb" );
    if( f )
    {
        if( fwrite( data, 1, length, f ) != length )
        {
            msg_Err( obj, "%s: %s", psz_filename, vlc_strerror_c(errno) );
        }
        else
        {
            msg_Dbg( obj, "album art saved to %s", psz_filename );
            input_item_SetArtURL( p_item, psz_uri );
        }
        fclose( f );
    }
    free( psz_uri );


    char *uid = input_item_GetInfo( p_item, "uid", "md5" );
    if ( ! *uid )
    {
        free( uid );
        goto end;
    }

    char *psz_byuiddir = GetDirByItemUIDs( uid );
    char *psz_byuidfile = GetFileByItemUID( psz_byuiddir, "arturl" );
    ArtCacheCreateDir( psz_byuiddir );
    free( psz_byuiddir );

    if ( psz_byuidfile )
    {
        f = vlc_fopen( psz_byuidfile, "wb" );
        if ( f )
        {
            if( fputs( "file://", f ) < 0 || fputs( psz_filename, f ) < 0 )
                msg_Err( obj, "Error writing %s: %s", psz_byuidfile,
                         vlc_strerror_c(errno) );
            fclose( f );
        }
        free( psz_byuidfile );
    }
    free( uid );

end:
    free( psz_filename );
    return VLC_SUCCESS;
}
