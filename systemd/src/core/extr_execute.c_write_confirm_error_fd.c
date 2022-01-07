
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ Unit ;


 int ETIMEDOUT ;
 int assert (int) ;
 int dprintf (int,char*,int ) ;
 int errno ;

__attribute__((used)) static void write_confirm_error_fd(int err, int fd, const Unit *u) {
        assert(err < 0);

        if (err == -ETIMEDOUT)
                dprintf(fd, "Confirmation question timed out for %s, assuming positive response.\n", u->id);
        else {
                errno = -err;
                dprintf(fd, "Couldn't ask confirmation for %s: %m, assuming positive response.\n", u->id);
        }
}
