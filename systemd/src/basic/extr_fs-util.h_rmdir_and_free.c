
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROTECT_ERRNO ;
 int free (char*) ;
 int rmdir (char*) ;

__attribute__((used)) static inline void rmdir_and_free(char *p) {
        PROTECT_ERRNO;
        (void) rmdir(p);
        free(p);
}
