#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct nfsdirent {int type; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_6__ {int /*<<< orphan*/  encoded_url; int /*<<< orphan*/  p_nfsdir; int /*<<< orphan*/  p_nfs; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int ITEM_TYPE_DIRECTORY ; 
 int ITEM_TYPE_FILE ; 
 int ITEM_TYPE_UNKNOWN ; 
#define  NF3DIR 129 
#define  NF3REG 128 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct nfsdirent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_readdir_helper*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    struct nfsdirent *p_nfsdirent;
    int i_ret = VLC_SUCCESS;
    FUNC1(p_sys->p_nfsdir);

    struct vlc_readdir_helper rdh;
    FUNC6(&rdh, p_access, p_node);

    while (i_ret == VLC_SUCCESS
        && (p_nfsdirent = FUNC3(p_sys->p_nfs, p_sys->p_nfsdir)) != NULL)
    {
        char *psz_name_encoded = FUNC7(p_nfsdirent->name);
        if (psz_name_encoded == NULL)
        {
            i_ret = VLC_ENOMEM;
            break;
        }
        char *psz_url = FUNC0(&p_sys->encoded_url, psz_name_encoded);
        FUNC2(psz_name_encoded);
        if (psz_url == NULL)
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        int i_type;
        switch (p_nfsdirent->type)
        {
        case NF3REG:
            i_type = ITEM_TYPE_FILE;
            break;
        case NF3DIR:
            i_type = ITEM_TYPE_DIRECTORY;
            break;
        default:
            i_type = ITEM_TYPE_UNKNOWN;
        }
        i_ret = FUNC4(&rdh, psz_url, NULL, p_nfsdirent->name,
                                           i_type, ITEM_NET);
        FUNC2(psz_url);
    }

    FUNC5(&rdh, i_ret == VLC_SUCCESS);

    return i_ret;
}