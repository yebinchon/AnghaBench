
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int ENOSYS ;
 int errno ;

__attribute__((used)) static inline int chown(const char *path, uid_t owner, gid_t group) {errno = ENOSYS; return -1;}
