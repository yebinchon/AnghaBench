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
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,unsigned char) ; 
 scalar_t__ FUNC5 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_memstream*,unsigned char) ; 

__attribute__((used)) static char *FUNC9(const char *str, const char *extras)
{
    FUNC0(str && extras);

    bool encode_percent = false;
    for (size_t i = 0; str[i] != '\0'; i++)
        if (str[i] == '%' && !(FUNC1(str[i+1]) && FUNC1(str[i+2])))
        {
            encode_percent = true;
            break;
        }

    struct vlc_memstream stream;

    FUNC6(&stream);

    for (size_t i = 0; str[i] != '\0'; i++)
    {
        unsigned char c = str[i];

        if (FUNC2(c) || FUNC3(c) || (FUNC4(extras, c) != NULL)
         || (c == '%' && !encode_percent))
            FUNC8(&stream, c);
        else
            FUNC7(&stream, "%%%02hhX", c);
    }

    if (FUNC5(&stream))
        return NULL;
    return stream.ptr;
}