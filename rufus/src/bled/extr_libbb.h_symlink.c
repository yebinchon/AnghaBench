
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int errno ;

__attribute__((used)) static inline int symlink(const char *oldpath, const char *newpath) {errno = ENOSYS; return -1;}
