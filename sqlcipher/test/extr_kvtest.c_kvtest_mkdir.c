
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkdir (char const*,...) ;

__attribute__((used)) static void kvtest_mkdir(const char *zDir){



  (void)mkdir(zDir, 0755);

}
