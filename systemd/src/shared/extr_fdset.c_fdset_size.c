
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int MAKE_SET (int *) ;
 int set_size (int ) ;

unsigned fdset_size(FDSet *fds) {
        return set_size(MAKE_SET(fds));
}
