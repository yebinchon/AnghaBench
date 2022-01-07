
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int access (char const*,int ) ;

__attribute__((used)) static bool file_exists(const char *path) {
 return path && access(path, R_OK) != -1;
}
