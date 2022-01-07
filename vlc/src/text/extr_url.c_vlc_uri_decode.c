
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtoul (char*,int *,int) ;

char *vlc_uri_decode (char *str)
{
    char *in = str, *out = str;
    if (in == ((void*)0))
        return ((void*)0);

    char c;
    while ((c = *(in++)) != '\0')
    {
        if (c == '%')
        {
            char hex[3];

            if (!(hex[0] = *(in++)) || !(hex[1] = *(in++)))
                return ((void*)0);
            hex[2] = '\0';
            *(out++) = strtoul (hex, ((void*)0), 0x10);
        }
        else
            *(out++) = c;
    }
    *out = '\0';
    return str;
}
