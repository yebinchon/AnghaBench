#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(vlc_url_t *url, const char *str)
{
    int ret = FUNC0(url, str);

    if (url->psz_path != NULL && !FUNC1(url->psz_path))
    {
        url->psz_path = NULL;
        errno = EINVAL;
        ret = -1;
    }
    return ret;
}