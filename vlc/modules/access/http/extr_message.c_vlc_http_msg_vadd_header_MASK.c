#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct vlc_http_msg {char*** headers; int count; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (char**,char*,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char*** FUNC4 (char***,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 
 size_t FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 size_t FUNC11 (struct vlc_http_msg*,char const*) ; 

__attribute__((used)) static int FUNC12(struct vlc_http_msg *m, const char *name,
                                    const char *fmt, va_list ap)
{
    if (!FUNC10(name))
    {   /* Not a valid field name, i.e. not an HTTP token */
        errno = EINVAL;
        return -1;
    }

    char *value;
    int len = FUNC9(&value, fmt, ap);
    if (FUNC8(len < 0))
        return -1;

    /* IETF RFC7230 §3.2.4 */
    for (char *p = value; *p; p++)
        if (*p == '\r' || *p == '\n')
            *p = ' ';

    /* Discard leading OWS */
    size_t crop = FUNC7(value, "\t ");
    if (crop > 0)
    {
        FUNC1((unsigned)len >= crop);
        FUNC3(value, value + crop, len - crop + 1);
        len -= crop;
    }

    /* Discard trailing OWS */
    while (len > 0 && (value[len - 1] == '\t' || value[len - 1] == ' '))
        value[--len] = '\0';

    /* Fold identically named header field values. This is unfortunately not
     * possible for Set-Cookie, while Cookie requires a special separator. */
    ssize_t idx = FUNC11(m, name);
    if (idx >= 0 && FUNC5(name, "Set-Cookie"))
    {
        char *merged;
        char sep = FUNC5(name, "Cookie") ? ',' : ';';

        int val = FUNC0(&merged, "%s%c %s", m->headers[idx][1], sep, value);

        FUNC2(value);

        if (FUNC8(val == -1))
            return -1;

        FUNC2(m->headers[idx][1]);
        m->headers[idx][1] = merged;
        return 0;
    }

    char *(*h)[2] = FUNC4(m->headers, sizeof (char *[2]) * (m->count + 1));
    if (FUNC8(h == NULL))
    {
        FUNC2(value);
        return -1;
    }

    m->headers = h;
    h += m->count;

    h[0][0] = FUNC6(name);
    if (FUNC8(h[0][0] == NULL))
    {
        FUNC2(value);
        return -1;
    }

    h[0][1] = value;
    m->count++;
    return 0;
}