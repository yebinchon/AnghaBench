
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int stat (char*,struct stat*) ;

__attribute__((used)) static int
ztest_check_path(char *path)
{
 struct stat s;

 return (!stat(path, &s));
}
