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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vlc_memstream*) ; 
 scalar_t__ FUNC1 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_memstream*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_memstream*,char const*) ; 

__attribute__((used)) static char * FUNC5( const char *psz_fmt, vlc_fourcc_t i_fourcc, int i_count,
                            const char *psz_access, const char *psz_mux )
{
    struct vlc_memstream stream;
    unsigned char c;

    if (FUNC1(&stream))
        return NULL;

    if( psz_fmt == NULL || !*psz_fmt )
        psz_fmt = "stream-%n-%c.%m";

    while ((c = *(psz_fmt++)) != '\0')
    {
        if (c != '%')
        {
            FUNC3(&stream, c);
            continue;
        }

        switch (c = *(psz_fmt++))
        {
            case 'n':
                FUNC2(&stream, "%d", i_count);
                break;
            case 'c':
                FUNC2(&stream, "%4.4s", (char *)&i_fourcc);
                break;
            case 'm':
                FUNC4(&stream, psz_mux);
                break;
            case 'a':
                FUNC4(&stream, psz_access);
                break;
            case '\0':
                FUNC3(&stream, '%');
                goto out;
            default:
                FUNC2(&stream, "%%%c", (int) c);
                break;
        }
    }
out:
    if (FUNC0(&stream))
        return NULL;
    return stream.ptr;
}