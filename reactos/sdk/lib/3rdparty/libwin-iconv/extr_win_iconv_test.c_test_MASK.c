#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * hlibiconv; } ;
typedef  TYPE_1__ rec_iconv_t ;
typedef  int /*<<< orphan*/  outbuf ;
typedef  scalar_t__ iconv_t ;
typedef  int /*<<< orphan*/  dllpath ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int _MAX_PATH ; 
 int errno ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (scalar_t__,char const**,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 char* FUNC7 (char const*,int) ; 
 scalar_t__ use_dll ; 

void
FUNC8(const char *from, const char *fromstr, int fromsize, const char *to, const char *tostr, int tosize, int errcode, int bufsize, int line)
{
    char outbuf[BUFSIZ];
    const char *pin;
    char *pout;
    size_t inbytesleft;
    size_t outbytesleft;
    iconv_t cd;
    size_t r;
#ifdef USE_LIBICONV_DLL
    char dllpath[_MAX_PATH];
#endif

    cd = FUNC4(to, from);
    if (cd == (iconv_t)(-1))
    {
        FUNC5("%s -> %s: NG: INVALID ENCODING NAME: line=%d\n", from, to, line);
        FUNC2(1);
    }

#ifdef USE_LIBICONV_DLL
    if (((rec_iconv_t *)cd)->hlibiconv != NULL)
        GetModuleFileNameA(((rec_iconv_t *)cd)->hlibiconv, dllpath, sizeof(dllpath));

    if (use_dll && ((rec_iconv_t *)cd)->hlibiconv == NULL)
    {
        printf("%s: %s -> %s: NG: FAILED TO USE DLL: line=%d\n", dllpath, from, to, line);
        exit(1);
    }
    else if (!use_dll && ((rec_iconv_t *)cd)->hlibiconv != NULL)
    {
        printf("%s: %s -> %s: NG: DLL IS LOADED UNEXPECTEDLY: line=%d\n", dllpath, from, to, line);
        exit(1);
    }
#endif

    errno = 0;

    pin = (char *)fromstr;
    pout = outbuf;
    inbytesleft = fromsize;
    outbytesleft = bufsize;
    r = FUNC3(cd, &pin, &inbytesleft, &pout, &outbytesleft);
    if (r != (size_t)(-1))
        r = FUNC3(cd, NULL, NULL, &pout, &outbytesleft);
    *pout = 0;

#ifdef USE_LIBICONV_DLL
    if (use_dll)
        printf("%s: ", dllpath);
#endif
    FUNC5("%s(%s) -> ", from, FUNC7(fromstr, fromsize));
    FUNC5("%s(%s%s%s): ", to, FUNC7(tostr, tosize),
            errcode == 0 ? "" : ":",
            errcode == 0 ? "" : FUNC1(errcode));
    if (FUNC6(outbuf, tostr) == 0 && errno == errcode)
        FUNC5("OK\n");
    else
    {
        FUNC5("RESULT(%s:%s): ", FUNC7(outbuf, sizeof(outbuf) - outbytesleft),
                FUNC1(errno));
        FUNC5("NG: line=%d\n", line);
        FUNC2(1);
    }
}