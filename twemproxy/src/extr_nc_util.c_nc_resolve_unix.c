
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string {size_t len; int data; } ;
struct sockaddr_un {char* sun_path; void* sun_family; } ;
struct TYPE_2__ {struct sockaddr_un un; } ;
struct sockinfo {int addrlen; void* family; TYPE_1__ addr; } ;


 void* AF_UNIX ;
 size_t NC_UNIX_ADDRSTRLEN ;
 int nc_memcpy (char*,int ,size_t) ;

__attribute__((used)) static int
nc_resolve_unix(struct string *name, struct sockinfo *si)
{
    struct sockaddr_un *un;

    if (name->len >= NC_UNIX_ADDRSTRLEN) {
        return -1;
    }

    un = &si->addr.un;

    un->sun_family = AF_UNIX;
    nc_memcpy(un->sun_path, name->data, name->len);
    un->sun_path[name->len] = '\0';

    si->family = AF_UNIX;
    si->addrlen = sizeof(*un);


    return 0;
}
