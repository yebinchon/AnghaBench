
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int FD_TO_PTR (int) ;
 int MAKE_SET (int *) ;
 int assert (int) ;
 int set_put (int ,int ) ;

int fdset_put(FDSet *s, int fd) {
        assert(s);
        assert(fd >= 0);

        return set_put(MAKE_SET(s), FD_TO_PTR(fd));
}
