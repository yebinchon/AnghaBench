
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int extract_port (char **phost)
{
    char *host = *phost, *port;

    if (host[0] == '[')
    {
        host = ++*phost;
        port = strchr (host, ']');
        if (port)
            *port++ = '\0';
    }
    else
        port = strchr (host, ':');

    if (port == ((void*)0))
        return 0;
    *port++ = '\0';
    return atoi (port);
}
