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
struct TYPE_3__ {int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; int /*<<< orphan*/  psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_http_auth_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( stream_t *p_access, const char *psz_header,
                           vlc_url_t *p_url, vlc_http_auth_t *p_auth )
{
    return
        FUNC1( FUNC0(p_access),
                                                     p_auth,
                                                     psz_header, "",
                                                     p_url->psz_path,
                                                     p_url->psz_username,
                                                     p_url->psz_password );
}