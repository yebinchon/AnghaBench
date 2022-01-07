
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;


 int memcpy (int ,int ,int ) ;
 int zmalloc (int ) ;

void script_addr_copy(struct addrinfo *src, struct addrinfo *dst) {
    *dst = *src;
    dst->ai_addr = zmalloc(src->ai_addrlen);
    memcpy(dst->ai_addr, src->ai_addr, src->ai_addrlen);
}
