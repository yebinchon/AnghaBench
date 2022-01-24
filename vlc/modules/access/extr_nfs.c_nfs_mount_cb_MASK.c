#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* psz_path; } ;
typedef  TYPE_2__ vlc_url_t ;
struct nfs_context {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  psz_url; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_15__ {int b_error; TYPE_1__* p_nfs_url; struct nfs_context* p_nfs; int /*<<< orphan*/ * psz_url_decoded_slash; } ;
typedef  TYPE_4__ access_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (TYPE_3__*,int,void*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_context*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nfs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  nfs_stat64_cb ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(int i_status, struct nfs_context *p_nfs, void *p_data,
             void *p_private_data)
{
    FUNC2(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    FUNC3(p_sys->p_nfs == p_nfs);
    (void) p_data;

    /* If a directory url doesn't end with '/', there is no way to know which
     * part of the url is the export point and which part is the path. An
     * example with "nfs://myhost/mnt/data": we can't know if /mnt or /mnt/data
     * is the export point. Therefore, in case of EACCES error, retry to mount
     * the url by adding a '/' to the decoded path. */
    if (i_status == -EACCES && p_sys->psz_url_decoded_slash == NULL)
    {
        vlc_url_t url;
        FUNC9(&url, p_access->psz_url);
        if (url.psz_path == NULL || url.psz_path[0] == '\0'
         || url.psz_path[FUNC7(url.psz_path) - 1] == '/'
         || (p_sys->psz_url_decoded_slash = FUNC1(&url, "/")) == NULL)
        {
            FUNC8(&url);
            FUNC0(p_access, i_status, p_data);
            return;
        }
        else
        {
            FUNC8(&url);
            FUNC5(p_access, "trying to mount '%s' again by adding a '/'",
                     p_access->psz_url);
            return;
        }
    }

    if (FUNC0(p_access, i_status, p_data))
        return;

    if (FUNC6(p_sys->p_nfs, p_sys->p_nfs_url->file, nfs_stat64_cb,
                         p_access) < 0)
    {
        FUNC4(p_access, "nfs_stat64_async failed");
        p_sys->b_error = true;
    }
}