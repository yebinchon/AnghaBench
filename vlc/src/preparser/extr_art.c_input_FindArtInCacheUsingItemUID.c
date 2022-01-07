
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;
typedef int FILE ;


 char* GetDirByItemUIDs (char*) ;
 char* GetFileByItemUID (char*,char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int free (char*) ;
 char* input_item_GetInfo (int *,char*,char*) ;
 int input_item_SetArtURL (int *,char*) ;
 int * vlc_fopen (char*,char*) ;

int input_FindArtInCacheUsingItemUID( input_item_t *p_item )
{
    char *uid = input_item_GetInfo( p_item, "uid", "md5" );
    if ( ! *uid )
    {
        free( uid );
        return VLC_EGENERIC;
    }


    bool b_done = 0;
    char *psz_byuiddir = GetDirByItemUIDs( uid );
    char *psz_byuidfile = GetFileByItemUID( psz_byuiddir, "arturl" );
    free( psz_byuiddir );
    if( psz_byuidfile )
    {
        FILE *fd = vlc_fopen( psz_byuidfile, "rb" );
        if ( fd )
        {
            char sz_cachefile[2049];

            if ( fgets( sz_cachefile, 2048, fd ) != ((void*)0) )
            {
                input_item_SetArtURL( p_item, sz_cachefile );
                b_done = 1;
            }
            fclose( fd );
        }
        free( psz_byuidfile );
    }
    free( uid );
    if ( b_done ) return VLC_SUCCESS;

    return VLC_EGENERIC;
}
