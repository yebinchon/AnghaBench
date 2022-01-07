
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int ENOSYS ;
 int errno ;

__attribute__((used)) static inline int utimes(const char *filename, const struct timeval times[2]) {errno = ENOSYS; return -1;}
