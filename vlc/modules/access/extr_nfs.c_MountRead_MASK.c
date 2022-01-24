#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_7__ {scalar_t__ i_count; char** ppsz_names; } ;
struct TYPE_8__ {TYPE_1__ exports; } ;
struct TYPE_10__ {int /*<<< orphan*/  encoded_url; TYPE_2__ res; int /*<<< orphan*/ * p_mount; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int /*<<< orphan*/  ITEM_TYPE_DIRECTORY ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_readdir_helper*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    FUNC1(p_sys->p_mount != NULL && p_sys->res.exports.i_count >= 0);
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    FUNC5(&rdh, p_access, p_node);

    for (int i = 0; i < p_sys->res.exports.i_count && i_ret == VLC_SUCCESS; ++i)
    {
        char *psz_name = p_sys->res.exports.ppsz_names[i];

        char *psz_url = FUNC0(&p_sys->encoded_url, psz_name);
        if (psz_url == NULL)
        {
            i_ret = VLC_ENOMEM;
            break;
        }
        i_ret = FUNC3(&rdh, psz_url, NULL, psz_name,
                                            ITEM_TYPE_DIRECTORY, ITEM_NET);
        FUNC2(psz_url);
    }

    FUNC4(&rdh, i_ret == VLC_SUCCESS);

    return i_ret;
}