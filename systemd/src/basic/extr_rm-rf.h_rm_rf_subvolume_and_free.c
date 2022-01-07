
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROTECT_ERRNO ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int free (char*) ;
 int rm_rf (char*,int) ;

__attribute__((used)) static inline void rm_rf_subvolume_and_free(char *p) {
        PROTECT_ERRNO;
        (void) rm_rf(p, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);
        free(p);
}
