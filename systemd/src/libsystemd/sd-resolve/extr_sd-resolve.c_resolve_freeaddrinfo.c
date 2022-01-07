
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_canonname; struct addrinfo* ai_addr; struct addrinfo* ai_next; } ;


 int free (struct addrinfo*) ;

__attribute__((used)) static void resolve_freeaddrinfo(struct addrinfo *ai) {
        while (ai) {
                struct addrinfo *next = ai->ai_next;

                free(ai->ai_addr);
                free(ai->ai_canonname);
                free(ai);
                ai = next;
        }
}
