
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int F_OK ;




 int S_IFMT ;


 int access (char*,int ) ;

const char* mode_to_inaccessible_node(mode_t mode) {







        switch(mode & S_IFMT) {
                case 129:
                        return "/run/systemd/inaccessible/reg";

                case 131:
                        return "/run/systemd/inaccessible/dir";

                case 132:
                        if (access("/run/systemd/inaccessible/chr", F_OK) == 0)
                                return "/run/systemd/inaccessible/chr";
                        return "/run/systemd/inaccessible/sock";

                case 133:
                        if (access("/run/systemd/inaccessible/blk", F_OK) == 0)
                                return "/run/systemd/inaccessible/blk";
                        return "/run/systemd/inaccessible/sock";

                case 130:
                        return "/run/systemd/inaccessible/fifo";

                case 128:
                        return "/run/systemd/inaccessible/sock";
        }
        return ((void*)0);
}
