
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int assert (int) ;
 int free (char*) ;
 char* realloc (char*,size_t) ;
 scalar_t__ unlikely (int ) ;
 size_t vlc_http_can_read (char*,size_t) ;
 scalar_t__ vlc_tls_Read (struct vlc_tls*,char*,size_t,int) ;

__attribute__((used)) static char *vlc_https_headers_recv(struct vlc_tls *tls, size_t *restrict lenp)
{
    size_t size = 0, len = 0, canread;
    char *buf = ((void*)0);

    while ((canread = vlc_http_can_read(buf, len)) > 0)
    {
        ssize_t val;

        if (len + canread >= size)
        {
            size += 2048;
            if (size > 65536)
                goto fail;

            char *newbuf = realloc(buf, size);
            if (unlikely(newbuf == ((void*)0)))
                goto fail;

            buf = newbuf;
        }

        assert(size - len >= canread);

        val = vlc_tls_Read(tls, buf + len, canread, 1);


        if (val != (ssize_t)canread)
            goto fail;

        len += val;
    }

    assert(size - len >= 1);
    buf[len] = '\0';
    if (lenp != ((void*)0))
        *lenp = len;
    return buf;
fail:
    free(buf);
    return ((void*)0);
}
