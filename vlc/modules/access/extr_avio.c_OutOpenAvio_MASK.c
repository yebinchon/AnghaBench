#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {TYPE_2__* p_sys; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  psz_path; int /*<<< orphan*/  p_cfg; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_11__ {int /*<<< orphan*/ * context; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  OutControl ; 
 int /*<<< orphan*/  OutSeek ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  Write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppsz_sout_options ; 
 char* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int) ; 

int FUNC11(vlc_object_t *object)
{
    sout_access_out_t *access = (sout_access_out_t*)object;

    FUNC4( access, "sout-avio-", ppsz_sout_options, access->p_cfg );

    sout_access_out_sys_t *sys = FUNC10(object, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    sys->context = NULL;

    /* */
    FUNC9(object);

    if (!access->psz_path)
        return VLC_EGENERIC;

    int ret;
    AVDictionary *options = NULL;
    char *psz_opts = FUNC7(access, "sout-avio-options");
    if (psz_opts) {
        FUNC8(psz_opts, &options);
        FUNC5(psz_opts);
    }
    ret = FUNC3(&sys->context, access->psz_path, AVIO_FLAG_WRITE,
                     NULL, &options);
    AVDictionaryEntry *t = NULL;
    while ((t = FUNC2(options, "", t, AV_DICT_IGNORE_SUFFIX)))
        FUNC6( access, "unknown option \"%s\"", t->key );
    FUNC1(&options);
    if (ret < 0) {
        errno = FUNC0(ret);
        FUNC6(access, "Failed to open %s", access->psz_path);
        return VLC_EGENERIC;
    }

    access->pf_write = Write;
    access->pf_control = OutControl;
    access->pf_seek = OutSeek;
    access->p_sys = sys;

    return VLC_SUCCESS;
}