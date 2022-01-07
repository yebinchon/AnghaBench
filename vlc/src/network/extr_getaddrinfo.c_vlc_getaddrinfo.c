
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int portbuf ;
typedef int hostbuf ;


 int EAI_SERVICE ;
 int NI_MAXHOST ;
 int assert (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo const*,struct addrinfo**) ;
 int memcpy (char*,char const*,size_t) ;
 int snprintf (char*,int,char*,unsigned int) ;
 size_t strlen (char const*) ;

int vlc_getaddrinfo (const char *node, unsigned port,
                     const struct addrinfo *hints, struct addrinfo **res)
{
    char hostbuf[NI_MAXHOST], portbuf[6], *servname;





    if (port != 0)
    {
        if (port > 65535)
            return EAI_SERVICE;

        snprintf (portbuf, sizeof (portbuf), "%u", port);
        servname = portbuf;
    }
    else
        servname = ((void*)0);






    if (node != ((void*)0))
    {
        if (node[0] == '[')
        {
            size_t len = strlen (node + 1);
            if ((len <= sizeof (hostbuf)) && (node[len] == ']'))
            {
                assert (len > 0);
                memcpy (hostbuf, node + 1, len - 1);
                hostbuf[len - 1] = '\0';
                node = hostbuf;
            }
        }
        if (node[0] == '\0')
            node = ((void*)0);
    }

    return getaddrinfo (node, servname, hints, res);
}
