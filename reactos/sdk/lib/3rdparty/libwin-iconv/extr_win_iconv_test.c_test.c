
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hlibiconv; } ;
typedef TYPE_1__ rec_iconv_t ;
typedef int outbuf ;
typedef scalar_t__ iconv_t ;
typedef int dllpath ;


 int BUFSIZ ;
 int GetModuleFileNameA (int *,char*,int) ;
 int _MAX_PATH ;
 int errno ;
 char* errstr (int) ;
 int exit (int) ;
 size_t iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 scalar_t__ iconv_open (char const*,char const*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* tohex (char const*,int) ;
 scalar_t__ use_dll ;

void
test(const char *from, const char *fromstr, int fromsize, const char *to, const char *tostr, int tosize, int errcode, int bufsize, int line)
{
    char outbuf[BUFSIZ];
    const char *pin;
    char *pout;
    size_t inbytesleft;
    size_t outbytesleft;
    iconv_t cd;
    size_t r;




    cd = iconv_open(to, from);
    if (cd == (iconv_t)(-1))
    {
        printf("%s -> %s: NG: INVALID ENCODING NAME: line=%d\n", from, to, line);
        exit(1);
    }
    errno = 0;

    pin = (char *)fromstr;
    pout = outbuf;
    inbytesleft = fromsize;
    outbytesleft = bufsize;
    r = iconv(cd, &pin, &inbytesleft, &pout, &outbytesleft);
    if (r != (size_t)(-1))
        r = iconv(cd, ((void*)0), ((void*)0), &pout, &outbytesleft);
    *pout = 0;





    printf("%s(%s) -> ", from, tohex(fromstr, fromsize));
    printf("%s(%s%s%s): ", to, tohex(tostr, tosize),
            errcode == 0 ? "" : ":",
            errcode == 0 ? "" : errstr(errcode));
    if (strcmp(outbuf, tostr) == 0 && errno == errcode)
        printf("OK\n");
    else
    {
        printf("RESULT(%s:%s): ", tohex(outbuf, sizeof(outbuf) - outbytesleft),
                errstr(errno));
        printf("NG: line=%d\n", line);
        exit(1);
    }
}
