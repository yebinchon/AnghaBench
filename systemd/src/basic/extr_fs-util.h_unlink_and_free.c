
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int unlink_noerrno (char*) ;

__attribute__((used)) static inline void unlink_and_free(char *p) {
        (void) unlink_noerrno(p);
        free(p);
}
