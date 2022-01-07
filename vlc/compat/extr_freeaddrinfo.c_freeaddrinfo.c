
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; struct addrinfo* ai_canonname; struct addrinfo* ai_next; } ;


 int free (struct addrinfo*) ;

void freeaddrinfo (struct addrinfo *res)
{
    while (res != ((void*)0))
    {
        struct addrinfo *next = res->ai_next;

        free (res->ai_canonname);
        free (res->ai_addr);
        free (res);
        res = next;
    }
}
