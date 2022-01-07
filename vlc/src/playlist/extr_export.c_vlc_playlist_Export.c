
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_view {struct vlc_playlist* playlist; } ;
struct vlc_playlist_export {int base_url; int file; struct vlc_playlist_view* playlist_view; } ;
struct vlc_playlist {int player; } ;
typedef int module_t ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int errno ;
 int fclose (int ) ;
 int ferror (int ) ;
 int free (int ) ;
 int * module_need (struct vlc_playlist_export*,char*,char const*,int) ;
 int module_unneed (struct vlc_playlist_export*,int *) ;
 int msg_Err (struct vlc_playlist_export*,char*,...) ;
 struct vlc_playlist_export* vlc_custom_create (int ,int,char*) ;
 int vlc_fopen (char const*,char*) ;
 int vlc_object_delete (struct vlc_playlist_export*) ;
 int vlc_path2uri (char const*,int *) ;
 int vlc_player_GetObject (int ) ;
 int vlc_playlist_AssertLocked (struct vlc_playlist*) ;
 int vlc_strerror_c (int ) ;

int
vlc_playlist_Export(struct vlc_playlist *playlist, const char *filename,
                    const char *type)
{
    vlc_playlist_AssertLocked(playlist);

    struct vlc_playlist_export *export =
        vlc_custom_create(vlc_player_GetObject(playlist->player),
                          sizeof(*export), "playlist export");

    if (!export)
        return VLC_ENOMEM;

    int ret = VLC_EGENERIC;

    struct vlc_playlist_view playlist_view = { .playlist = playlist };

    export->playlist_view = &playlist_view;
    export->base_url = vlc_path2uri(filename, ((void*)0));
    export->file = vlc_fopen(filename, "wt");
    if (!export->file)
    {
        msg_Err(export, "Could not create playlist file %s, %s",
                filename, vlc_strerror_c(errno));
        goto close_file;
    }


    module_t *module = module_need(export, "playlist export", type, 1);

    if (!module)
    {
        msg_Err(export, "Could not export playlist");
        goto out;
    }

    module_unneed(export, module);

    if (!ferror(export->file))
        ret = VLC_SUCCESS;
    else
        msg_Err(export, "Could not write playlist file: %s",
                vlc_strerror_c(errno));

close_file:
    fclose(export->file);
out:
   free(export->base_url);
   vlc_object_delete(export);
   return ret;
}
