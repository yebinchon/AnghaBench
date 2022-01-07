
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int anetSetBlock (char*,int,int) ;

int anetNonBlock(char *err, int fd) {
    return anetSetBlock(err,fd,1);
}
