
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MHD_Connection {int dummy; } ;


 int EPERM ;

int check_permissions(struct MHD_Connection *connection, int *code, char **hostname) {
        return -EPERM;
}
