
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static bool dir_exists(char *path) {
 struct stat sb;
 return stat(path, &sb) == 0 && S_ISDIR(sb.st_mode);
}
