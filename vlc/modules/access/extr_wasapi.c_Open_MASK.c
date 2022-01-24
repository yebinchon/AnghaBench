#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {char* psz_location; int /*<<< orphan*/ * out; int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_demux; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {int /*<<< orphan*/ ** events; int /*<<< orphan*/ * client; int /*<<< orphan*/ * es; int /*<<< orphan*/ * thread; int /*<<< orphan*/ * ready; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  caching; int /*<<< orphan*/  start_time; } ;
typedef  TYPE_2__ demux_sys_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  Thread ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 uintptr_t FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    HRESULT hr;

    if (demux->out == NULL)
        return VLC_EGENERIC;

    if (demux->psz_location != NULL && *demux->psz_location != '\0')
        return VLC_EGENERIC; /* TODO non-default device */

    demux_sys_t *sys = FUNC16(obj, sizeof (*sys));
    if (FUNC14(sys == NULL))
        return VLC_ENOMEM;

    sys->client = NULL;
    sys->es = NULL;
    sys->caching = FUNC9( FUNC15(obj, "live-caching") );
    sys->start_time = FUNC17();
    for (unsigned i = 0; i < 2; i++)
        sys->events[i] = NULL;

    for (unsigned i = 0; i < 2; i++) {
        sys->events[i] = FUNC4(NULL, FALSE, FALSE, NULL);
        if (sys->events[i] == NULL)
            goto error;
    }

    hr = FUNC1(NULL, COINIT_MULTITHREADED);
    if (FUNC14(FUNC5(hr))) {
        FUNC13(demux, "cannot initialize COM (error 0x%lX)", hr);
        goto error;
    }

    bool loopback;
    sys->client = FUNC6(demux, &loopback);
    if (sys->client == NULL) {
        FUNC2();
        goto error;
    }

    sys->es = FUNC3(demux, sys->client, loopback, sys->caching,
                       &sys->frame_size);
    if (sys->es == NULL)
        goto error;

    hr = FUNC8(sys->client, sys->events[1]);
    if (FUNC5(hr)) {
        FUNC13(demux, "cannot set event handle (error 0x%lX)", hr);
        goto error;
    }

    demux->p_sys = sys;

    sys->ready = FUNC4(NULL, FALSE, FALSE, NULL);
    if (sys->ready == NULL)
        goto error;

    uintptr_t h = FUNC11(NULL, 0, Thread, demux, 0, NULL);
    if (h != 0)
        FUNC10(sys->ready, INFINITE);
    FUNC0(sys->ready);

    sys->thread = (HANDLE)h;
    if (sys->thread == NULL)
        goto error;
    FUNC2();

    demux->pf_demux = NULL;
    demux->pf_control = Control;
    return VLC_SUCCESS;

error:
    if (sys->es != NULL)
        FUNC12(demux->out, sys->es);
    if (sys->client != NULL)
    {
        FUNC7(sys->client);
        FUNC2();
    }
    for (unsigned i = 0; i < 2; i++)
        if (sys->events[i] != NULL)
            FUNC0(sys->events[i]);
    return VLC_ENOMEM;
}