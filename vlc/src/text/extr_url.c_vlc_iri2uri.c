
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int SIZE_MAX ;
 int errno ;
 char* malloc (size_t) ;
 scalar_t__ unlikely (int) ;
 void** urihex ;

__attribute__((used)) static char *vlc_iri2uri(const char *iri)
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

    if (unlikely((a + u) > (SIZE_MAX / 4)))
    {
        errno = ENOMEM;
        return ((void*)0);
    }

    char *uri = malloc(a + 3 * u + 1), *p;
    if (unlikely(uri == ((void*)0)))
        return ((void*)0);

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
