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
 int FUNC0 (char const) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static char *FUNC2 (const char *enc)
{
    char *ret = enc ? FUNC1 (enc) : NULL;
    if (ret == NULL)
        return NULL;

    char *out = ret;
    for (const char *in = ret; *in; out++)
    {
        int h1, h2;

        if ((in[0] == '\\') && (in[1] == 'x')
         && ((h1 = FUNC0 (in[2])) != -1)
         && ((h2 = FUNC0 (in[3])) != -1))
        {
            *out = (h1 << 4) | h2;
            in += 4;
        }
        else
        {
            *out = *in;
            in++;
        }
    }
    *out = 0;
    return ret;
}