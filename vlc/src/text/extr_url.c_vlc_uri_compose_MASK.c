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
struct TYPE_3__ {char* psz_protocol; char* psz_path; char* psz_option; char* psz_fragment; int /*<<< orphan*/  i_port; int /*<<< orphan*/ * psz_host; int /*<<< orphan*/ * psz_password; int /*<<< orphan*/ * psz_username; } ;
typedef  TYPE_1__ vlc_url_t ;
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_memstream*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_memstream*,char*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 

char *FUNC10(const vlc_url_t *uri)
{
    struct vlc_memstream stream;
    char *enc;

    FUNC4(&stream);

    if (uri->psz_protocol != NULL)
        FUNC5(&stream, "%s:", uri->psz_protocol);

    if (uri->psz_host != NULL)
    {
        FUNC8(&stream, "//", 2);

        if (uri->psz_username != NULL)
        {
            enc = FUNC9(uri->psz_username);
            if (enc == NULL)
                goto error;

            FUNC7(&stream, enc);
            FUNC0(enc);

            if (uri->psz_password != NULL)
            {
                enc = FUNC9(uri->psz_password);
                if (FUNC2(enc == NULL))
                    goto error;

                FUNC5(&stream, ":%s", enc);
                FUNC0(enc);
            }
            FUNC6(&stream, '@');
        }

        const char *fmt;

        if (FUNC1(uri->psz_host, ':') != NULL)
            fmt = (uri->i_port != 0) ? "[%s]:%d" : "[%s]";
        else
            fmt = (uri->i_port != 0) ? "%s:%d" : "%s";
        /* No IDNA decoding here. Seems unnecessary, dangerous even. */
        FUNC5(&stream, fmt, uri->psz_host, uri->i_port);
    }

    if (uri->psz_path != NULL)
        FUNC7(&stream, uri->psz_path);
    if (uri->psz_option != NULL)
        FUNC5(&stream, "?%s", uri->psz_option);
    if (uri->psz_fragment != NULL)
        FUNC5(&stream, "#%s", uri->psz_fragment);

    if (FUNC3(&stream))
        return NULL;
    return stream.ptr;

error:
    if (FUNC3(&stream) == 0)
        FUNC0(stream.ptr);
    return NULL;
}