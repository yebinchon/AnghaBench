
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int dev_t ;


 int ENOSYS ;
 int errno ;

__attribute__((used)) static inline int mknod(const char *pathname, mode_t mode, dev_t dev) {errno = ENOSYS; return -1;}
