
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPCONV_G_FMT_BUFSIZE ;
 int abort () ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char locale_decimal_point ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int stderr ;
 char* strchr (char*,char) ;
 double strtod (char const*,char**) ;
 int strtod_buffer_size (char const*) ;

double fpconv_strtod(const char *nptr, char **endptr)
{
    char localbuf[FPCONV_G_FMT_BUFSIZE];
    char *buf, *endbuf, *dp;
    int buflen;
    double value;


    if (locale_decimal_point == '.')
        return strtod(nptr, endptr);

    buflen = strtod_buffer_size(nptr);
    if (!buflen) {

        *endptr = (char *)nptr;
        return 0;
    }


    if (buflen >= FPCONV_G_FMT_BUFSIZE) {

        buf = malloc(buflen + 1);
        if (!buf) {
            fprintf(stderr, "Out of memory");
            abort();
        }
    } else {

        buf = localbuf;
    }
    memcpy(buf, nptr, buflen);
    buf[buflen] = 0;


    dp = strchr(buf, '.');
    if (dp)
        *dp = locale_decimal_point;

    value = strtod(buf, &endbuf);
    *endptr = (char *)&nptr[endbuf - buf];
    if (buflen >= FPCONV_G_FMT_BUFSIZE)
        free(buf);

    return value;
}
