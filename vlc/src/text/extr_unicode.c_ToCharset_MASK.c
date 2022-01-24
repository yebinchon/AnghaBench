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
typedef  scalar_t__ vlc_iconv_t ;

/* Variables and functions */
 scalar_t__ E2BIG ; 
 scalar_t__ EILSEQ ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (scalar_t__,char const**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

void *FUNC7(const char *charset, const char *in, size_t *outsize)
{
    vlc_iconv_t hd = FUNC6 (charset, "UTF-8");
    if (hd == (vlc_iconv_t)(-1))
        return NULL;

    const size_t inlen = FUNC2 (in);
    void *res;

    for (unsigned mul = 4; mul < 16; mul++)
    {
        size_t outlen = mul * (inlen + 1);
        res = FUNC1 (outlen);
        if (FUNC3(res == NULL))
            break;

        const char *inp = in;
        char *outp = res;
        size_t inb = inlen;
        size_t outb = outlen - mul;

        if (FUNC4 (hd, &inp, &inb, &outp, &outb) != (size_t)(-1))
        {
            *outsize = outlen - mul - outb;
            outb += mul;
            inb = 1; /* append nul terminator if possible */
            if (FUNC4 (hd, &inp, &inb, &outp, &outb) != (size_t)(-1))
                break;
            if (errno == EILSEQ) /* cannot translate nul terminator!? */
                break;
        }

        FUNC0 (res);
        res = NULL;
        if (errno != E2BIG) /* conversion failure */
            break;
    }
    FUNC5 (hd);
    return res;
}