
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SmackAttr ;


 int EOPNOTSUPP ;

int mac_smack_read_fd(int fd, SmackAttr attr, char **label) {
        return -EOPNOTSUPP;
}
