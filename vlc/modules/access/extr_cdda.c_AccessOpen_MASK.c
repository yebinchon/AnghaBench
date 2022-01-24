#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vcddev_t ;
struct TYPE_4__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/ * pf_block; int /*<<< orphan*/ * pf_read; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ i_cdda_tracks; int /*<<< orphan*/ * p_toc; int /*<<< orphan*/ * cddb; int /*<<< orphan*/ * mbrecord; int /*<<< orphan*/  i_cdda_last; int /*<<< orphan*/  i_cdda_first; scalar_t__ cdtextc; int /*<<< orphan*/ * cdtextv; int /*<<< orphan*/ * vcddev; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AccessControl ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReadDir ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(vlc_object_t *obj, vcddev_t *dev)
{
    stream_t *access = (stream_t *)obj;
    /* Only whole discs here */
    access_sys_t *sys = FUNC11(obj, sizeof (*sys));
    if (FUNC8(sys == NULL))
    {
        FUNC3(obj, dev);
        return VLC_ENOMEM;
    }

    sys->vcddev = dev;
    sys->p_toc = FUNC5(obj, dev, true);
    if (sys->p_toc == NULL)
    {
        FUNC7(obj, "cannot count tracks");
        goto error;
    }

    sys->i_cdda_tracks = FUNC2(sys->p_toc, &sys->i_cdda_first, &sys->i_cdda_last);
    if (sys->i_cdda_tracks == 0)
    {
        FUNC7(obj, "no audio tracks found");
        FUNC10(sys->p_toc);
        goto error;
    }

    if (FUNC4(obj, dev, &sys->cdtextv, &sys->cdtextc))
    {
        FUNC6(obj, "CD-TEXT information missing");
        sys->cdtextv = NULL;
        sys->cdtextc = 0;
    }

    sys->mbrecord = NULL;
#ifdef HAVE_LIBCDDB
    sys->cddb = NULL;
#endif

    if(FUNC9(obj, "metadata-network-access"))
    {
        sys->mbrecord = FUNC1(obj, sys->p_toc, sys->i_cdda_tracks,
                                           sys->i_cdda_first, sys->i_cdda_last );
#ifdef HAVE_LIBCDDB
        if(!sys->mbrecord)
            sys->cddb = GetCDDBInfo(obj, sys->p_toc);
#endif
    }
    else FUNC6(obj, "album art policy set to manual: not fetching");

    access->p_sys = sys;
    access->pf_read = NULL;
    access->pf_block = NULL;
    access->pf_readdir = ReadDir;
    access->pf_seek = NULL;
    access->pf_control = AccessControl;
    return VLC_SUCCESS;

error:
    FUNC3(obj, dev);
    return VLC_EGENERIC;
}