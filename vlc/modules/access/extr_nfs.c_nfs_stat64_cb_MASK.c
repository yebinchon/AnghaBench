#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct nfs_stat_64 {int /*<<< orphan*/  nfs_mode; int /*<<< orphan*/  nfs_gid; int /*<<< orphan*/  nfs_uid; } ;
struct nfs_context {int dummy; } ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_11__ {int b_error; TYPE_1__* p_nfs_url; struct nfs_context* p_nfs; struct nfs_stat_64 stat; scalar_t__ b_auto_guid; } ;
typedef  TYPE_3__ access_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int,void*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_context*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (struct nfs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  nfs_open_cb ; 
 scalar_t__ FUNC8 (struct nfs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  nfs_opendir_cb ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(int i_status, struct nfs_context *p_nfs, void *p_data,
              void *p_private_data)
{
    FUNC3(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    FUNC4(p_sys->p_nfs == p_nfs);
    if (FUNC0(p_access, i_status, p_data))
        return;

    struct nfs_stat_64 *p_stat = p_data;
    p_sys->stat = *p_stat;

    if (p_sys->b_auto_guid)
    {
        FUNC10(p_sys->p_nfs, p_sys->stat.nfs_uid);
        FUNC9(p_sys->p_nfs, p_sys->stat.nfs_gid);
    }

    if (FUNC1(p_sys->stat.nfs_mode))
    {
        FUNC5(p_access, "nfs_opendir: '%s'", p_sys->p_nfs_url->file);
        if (FUNC8(p_sys->p_nfs, p_sys->p_nfs_url->file,
                              nfs_opendir_cb, p_access) != 0)
        {
            FUNC6(p_access, "nfs_opendir_async failed");
            p_sys->b_error = true;
        }
    }
    else if (FUNC2(p_sys->stat.nfs_mode))
    {
        FUNC5(p_access, "nfs_open: '%s'", p_sys->p_nfs_url->file);
        if (FUNC7(p_sys->p_nfs, p_sys->p_nfs_url->file, O_RDONLY,
                           nfs_open_cb, p_access) < 0)
        {
            FUNC6(p_access, "nfs_open_async failed");
            p_sys->b_error = true;
        }
    }
    else
    {
        FUNC6(p_access, "nfs_stat64_cb: file type not handled");
        p_sys->b_error = true;
    }
}