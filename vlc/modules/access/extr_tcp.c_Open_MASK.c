#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ i_port; int /*<<< orphan*/ * psz_host; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_tls_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_block; int /*<<< orphan*/  pf_read; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  psz_location; int /*<<< orphan*/  psz_url; } ;
typedef  TYPE_2__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Read ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC4(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_tls_t *sock;
    vlc_url_t url;

    if (FUNC2(&url, access->psz_url)
     || url.psz_host == NULL || url.i_port == 0)
    {
        FUNC0(access, "invalid location: %s", access->psz_location);
        FUNC1(&url);
        return VLC_EGENERIC;
    }

    sock = FUNC3(obj, url.psz_host, url.i_port);
    FUNC1(&url);
    if (sock == NULL)
        return VLC_EGENERIC;

    access->p_sys = sock;
    access->pf_read = Read;
    access->pf_block = NULL;
    access->pf_control = Control;
    access->pf_seek = NULL;
    return VLC_SUCCESS;
}