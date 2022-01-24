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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 void** urihex ; 

__attribute__((used)) static char *FUNC2(const char *iri)
{
    size_t a = 0, u = 0;

    for (size_t i = 0; iri[i] != '\0'; i++)
    {
        unsigned char c = iri[i];

        if (c < 128)
            a++;
        else
            u++;
    }

    if (FUNC1((a + u) > (SIZE_MAX / 4)))
    {
        errno = ENOMEM;
        return NULL;
    }

    char *uri = FUNC0(a + 3 * u + 1), *p;
    if (FUNC1(uri == NULL))
        return NULL;

    for (p = uri; *iri != '\0'; iri++)
    {
        unsigned char c = *iri;

        if (c < 128)
            *(p++) = c;
        else
        {
            *(p++) = '%';
            *(p++) = urihex[c >> 4];
            *(p++) = urihex[c & 0xf];
        }
    }

    *p = '\0';
    return uri;
}