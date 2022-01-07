
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int ENOENT ;
 int FD_TO_PTR (int) ;
 int MAKE_SET (int *) ;
 int assert (int) ;
 scalar_t__ set_remove (int ,int ) ;

int fdset_remove(FDSet *s, int fd) {
        assert(s);
        assert(fd >= 0);

        return set_remove(MAKE_SET(s), FD_TO_PTR(fd)) ? fd : -ENOENT;
}
