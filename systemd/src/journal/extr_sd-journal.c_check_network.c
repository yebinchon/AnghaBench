
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ on_network; } ;
typedef TYPE_1__ sd_journal ;


 int assert (TYPE_1__*) ;
 scalar_t__ fd_is_network_fs (int) ;

__attribute__((used)) static void check_network(sd_journal *j, int fd) {
        assert(j);

        if (j->on_network)
                return;

        j->on_network = fd_is_network_fs(fd);
}
