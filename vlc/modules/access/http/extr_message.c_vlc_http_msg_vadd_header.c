
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct vlc_http_msg {char*** headers; int count; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int asprintf (char**,char*,char*,char,char*) ;
 int assert (int) ;
 int errno ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 char*** realloc (char***,int) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 char* strdup (char const*) ;
 size_t strspn (char*,char*) ;
 scalar_t__ unlikely (int) ;
 int vasprintf (char**,char const*,int ) ;
 int vlc_http_is_token (char const*) ;
 size_t vlc_http_msg_find_header (struct vlc_http_msg*,char const*) ;

__attribute__((used)) static int vlc_http_msg_vadd_header(struct vlc_http_msg *m, const char *name,
                                    const char *fmt, va_list ap)
{
    if (!vlc_http_is_token(name))
    {
        errno = EINVAL;
        return -1;
    }

    char *value;
    int len = vasprintf(&value, fmt, ap);
    if (unlikely(len < 0))
        return -1;


    for (char *p = value; *p; p++)
        if (*p == '\r' || *p == '\n')
            *p = ' ';


    size_t crop = strspn(value, "\t ");
    if (crop > 0)
    {
        assert((unsigned)len >= crop);
        memmove(value, value + crop, len - crop + 1);
        len -= crop;
    }


    while (len > 0 && (value[len - 1] == '\t' || value[len - 1] == ' '))
        value[--len] = '\0';



    ssize_t idx = vlc_http_msg_find_header(m, name);
    if (idx >= 0 && strcasecmp(name, "Set-Cookie"))
    {
        char *merged;
        char sep = strcasecmp(name, "Cookie") ? ',' : ';';

        int val = asprintf(&merged, "%s%c %s", m->headers[idx][1], sep, value);

        free(value);

        if (unlikely(val == -1))
            return -1;

        free(m->headers[idx][1]);
        m->headers[idx][1] = merged;
        return 0;
    }

    char *(*h)[2] = realloc(m->headers, sizeof (char *[2]) * (m->count + 1));
    if (unlikely(h == ((void*)0)))
    {
        free(value);
        return -1;
    }

    m->headers = h;
    h += m->count;

    h[0][0] = strdup(name);
    if (unlikely(h[0][0] == ((void*)0)))
    {
        free(value);
        return -1;
    }

    h[0][1] = value;
    m->count++;
    return 0;
}
