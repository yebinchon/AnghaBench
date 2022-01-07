
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int vlc_http_minor(const char *msg)
{
    int minor;

    if (sscanf(msg, "HTTP/1.%1d", &minor) == 1)
        return minor;
    return -1;
}
