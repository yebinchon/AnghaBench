
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int dir_is_empty_at (int ,char const*) ;

__attribute__((used)) static inline int dir_is_empty(const char *path) {
        return dir_is_empty_at(AT_FDCWD, path);
}
