
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct conn {int family; scalar_t__ addr; int sd; } ;
typedef int rstatus_t ;





 int NC_ERROR ;
 int NC_OK ;
 int NOT_REACHED () ;
 int nc_set_reuseaddr (int ) ;
 int unlink (int ) ;

__attribute__((used)) static rstatus_t
proxy_reuse(struct conn *p)
{
    rstatus_t status;
    struct sockaddr_un *un;

    switch (p->family) {
    case 130:
    case 129:
        status = nc_set_reuseaddr(p->sd);
        break;

    case 128:





        un = (struct sockaddr_un *) p->addr;
        unlink(un->sun_path);
        status = NC_OK;
        break;

    default:
        NOT_REACHED();
        status = NC_ERROR;
    }

    return status;
}
