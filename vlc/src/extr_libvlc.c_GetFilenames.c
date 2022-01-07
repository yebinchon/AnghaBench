
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int VLC_INPUT_OPTION_TRUSTED ;
 int free (char*) ;
 int intf_InsertItem (int *,char*,unsigned int,char const* const*,int ) ;
 int msg_Warn (int *,char*,char const* const) ;
 int * strstr (char const* const,char*) ;
 char* vlc_path2uri (char const* const,int *) ;

__attribute__((used)) static void GetFilenames( libvlc_int_t *p_vlc, unsigned n,
                          const char *const args[] )
{
    while( n > 0 )
    {

        unsigned i_options = 0;

        while( args[--n][0] == ':' )
        {
            i_options++;
            if( n == 0 )
            {
                msg_Warn( p_vlc, "options %s without item", args[n] );
                return;
            }
        }

        char *mrl = ((void*)0);
        if( strstr( args[n], "://" ) == ((void*)0) )
        {
            mrl = vlc_path2uri( args[n], ((void*)0) );
            if( !mrl )
                continue;
        }

        intf_InsertItem( p_vlc, (mrl != ((void*)0)) ? mrl : args[n], i_options,
                         ( i_options ? &args[n + 1] : ((void*)0) ),
                         VLC_INPUT_OPTION_TRUSTED );
        free( mrl );
    }
}
