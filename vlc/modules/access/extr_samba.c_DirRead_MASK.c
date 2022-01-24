#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct smbc_dirent {char* name; int smbc_type; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_6__ {char* psz_host; char* psz_path; } ;
struct TYPE_8__ {TYPE_1__ url; int /*<<< orphan*/  i_smb; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int ITEM_TYPE_DIRECTORY ; 
 int ITEM_TYPE_FILE ; 
#define  SMBC_COMMS_SHARE 136 
#define  SMBC_DIR 135 
#define  SMBC_FILE 134 
#define  SMBC_FILE_SHARE 133 
#define  SMBC_IPC_SHARE 132 
#define  SMBC_LINK 131 
#define  SMBC_PRINTER_SHARE 130 
#define  SMBC_SERVER 129 
#define  SMBC_WORKGROUP 128 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char*) ; 
 struct smbc_dirent* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_readdir_helper*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7 (stream_t *p_access, input_item_node_t *p_node )
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    FUNC5( &rdh, p_access, p_node );

    struct smbc_dirent *p_entry;

    while( i_ret == VLC_SUCCESS && ( p_entry = FUNC2( p_sys->i_smb ) ) )
    {
        const char *psz_server = p_sys->url.psz_host;
        const char *psz_path = p_sys->url.psz_path;
        const char *psz_name = p_entry->name;
        int i_type;

        switch( p_entry->smbc_type )
        {
        case SMBC_SERVER:
        case SMBC_WORKGROUP:
            psz_server = p_sys->url.psz_host;
            psz_path = NULL;
            psz_name = NULL;
            /* fall through */
        case SMBC_FILE_SHARE:
        case SMBC_DIR:
            i_type = ITEM_TYPE_DIRECTORY;
            break;
        case SMBC_FILE:
            i_type = ITEM_TYPE_FILE;
            break;
        default:
        case SMBC_PRINTER_SHARE:
        case SMBC_COMMS_SHARE:
        case SMBC_IPC_SHARE:
        case SMBC_LINK:
            continue;
        }

        char *psz_encoded_name = NULL;
        if( psz_name != NULL
         && ( psz_encoded_name = FUNC6( psz_name ) ) == NULL )
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        char *uri = FUNC1(NULL, NULL, NULL,
                                psz_server, psz_path, psz_encoded_name);
        if (uri == NULL) {
            FUNC0(psz_encoded_name);
            i_ret = VLC_ENOMEM;
            break;
        }
        FUNC0(psz_encoded_name);
        i_ret = FUNC3(&rdh, uri, NULL, p_entry->name,
                                           i_type, ITEM_NET);
        FUNC0(uri);
    }

    FUNC4( &rdh, i_ret == VLC_SUCCESS );

    return i_ret;
}