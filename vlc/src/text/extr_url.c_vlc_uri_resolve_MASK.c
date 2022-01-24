#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* psz_path; int /*<<< orphan*/ * psz_option; int /*<<< orphan*/  i_port; int /*<<< orphan*/ * psz_host; int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; int /*<<< orphan*/ * psz_protocol; } ;
typedef  TYPE_1__ vlc_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 char* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

char *FUNC8(const char *base, const char *ref)
{
    vlc_url_t base_uri, rel_uri;
    vlc_url_t tgt_uri;
    char *pathbuf = NULL, *ret = NULL;

    if (FUNC4(&rel_uri, ref))
    {
        FUNC3(&rel_uri);
        return NULL;
    }

    if (rel_uri.psz_protocol != NULL)
    {   /* Short circuit in case of absolute URI */
        FUNC3(&rel_uri);
        return FUNC1(ref);
    }

    FUNC4(&base_uri, base);

    /* RFC3986 section 5.2.2 */
    do
    {
        tgt_uri = rel_uri;
        tgt_uri.psz_protocol = base_uri.psz_protocol;

        if (rel_uri.psz_host != NULL)
            break;

        tgt_uri.psz_username = base_uri.psz_username;
        tgt_uri.psz_password = base_uri.psz_password;
        tgt_uri.psz_host = base_uri.psz_host;
        tgt_uri.i_port = base_uri.i_port;

        if (rel_uri.psz_path == NULL || rel_uri.psz_path[0] == '\0')
        {
            tgt_uri.psz_path = base_uri.psz_path;
            if (rel_uri.psz_option == NULL)
                tgt_uri.psz_option = base_uri.psz_option;
            break;
        }

        if (rel_uri.psz_path[0] == '/')
            break;

        pathbuf = FUNC6(base_uri.psz_path, rel_uri.psz_path);
        if (FUNC2(pathbuf == NULL))
            goto error;

        tgt_uri.psz_path = pathbuf;
    }
    while (0);

    if (tgt_uri.psz_path != NULL)
        FUNC7(tgt_uri.psz_path);

    ret = FUNC5(&tgt_uri);
error:
    FUNC0(pathbuf);
    FUNC3(&base_uri);
    FUNC3(&rel_uri);
    return ret;
}