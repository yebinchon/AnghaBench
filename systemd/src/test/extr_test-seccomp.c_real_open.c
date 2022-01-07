
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int __NR_open ;
 int open (char const*,int,int ) ;
 scalar_t__ syscall (int ,char const*,int,int ) ;

__attribute__((used)) static int real_open(const char *path, int flags, mode_t mode) {







        return open(path, flags, mode);

}
