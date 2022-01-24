#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct access_sys {int /*<<< orphan*/  encoded_url; } ;
struct TYPE_3__ {struct access_sys* p_sys; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(stream_t *access, struct vlc_readdir_helper *rdh,
                   const char *name, int i_type)
{
    struct access_sys *sys = access->p_sys;
    char *name_encoded = FUNC3(name);
    if (name_encoded == NULL)
        return VLC_ENOMEM;

    char *url = FUNC2(&sys->encoded_url, name_encoded);
    FUNC0(name_encoded);
    if (url == NULL)
        return VLC_ENOMEM;

    int ret = FUNC1(rdh, url, NULL, name, i_type,
                                         ITEM_NET);
    FUNC0(url);
    return ret;
}