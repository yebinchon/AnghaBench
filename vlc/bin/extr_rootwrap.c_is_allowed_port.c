
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ntohs (int) ;

__attribute__((used)) static inline int is_allowed_port (uint16_t port)
{
    port = ntohs (port);
    return (port == 80) || (port == 443) || (port == 554);
}
