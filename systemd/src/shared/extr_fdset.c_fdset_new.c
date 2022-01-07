
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int * MAKE_FDSET (int ) ;
 int set_new (int *) ;

FDSet *fdset_new(void) {
        return MAKE_FDSET(set_new(((void*)0)));
}
