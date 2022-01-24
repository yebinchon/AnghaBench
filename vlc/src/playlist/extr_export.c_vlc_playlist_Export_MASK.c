#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_playlist_view {struct vlc_playlist* playlist; } ;
struct vlc_playlist_export {int /*<<< orphan*/  base_url; int /*<<< orphan*/  file; struct vlc_playlist_view* playlist_view; } ;
struct vlc_playlist {int /*<<< orphan*/  player; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct vlc_playlist_export*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_playlist_export*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_playlist_export*,char*,...) ; 
 struct vlc_playlist_export* FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_playlist_export*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vlc_playlist*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct vlc_playlist *playlist, const char *filename,
                    const char *type)
{
    FUNC11(playlist);

    struct vlc_playlist_export *export =
        FUNC6(FUNC10(playlist->player),
                          sizeof(*export), "playlist export");

    if (!export)
        return VLC_ENOMEM;

    int ret = VLC_EGENERIC;

    struct vlc_playlist_view playlist_view = { .playlist = playlist };

    export->playlist_view = &playlist_view;
    export->base_url = FUNC9(filename, NULL);
    export->file = FUNC7(filename, "wt");
    if (!export->file)
    {
        FUNC5(export, "Could not create playlist file %s, %s",
                filename, FUNC12(errno));
        goto close_file;
    }

    // this will actually export
    module_t *module = FUNC3(export, "playlist export", type, true);

    if (!module)
    {
        FUNC5(export, "Could not export playlist");
        goto out;
    }

    FUNC4(export, module);

    if (!FUNC1(export->file))
        ret = VLC_SUCCESS;
    else
        FUNC5(export, "Could not write playlist file: %s",
                FUNC12(errno));

close_file:
    FUNC0(export->file);
out:
   FUNC2(export->base_url);
   FUNC8(export);
   return ret;
}