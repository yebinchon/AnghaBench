
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int MAKE_SET (int *) ;
 int fdset_close (int *) ;
 int set_free (int ) ;

FDSet* fdset_free(FDSet *s) {
        fdset_close(s);
        set_free(MAKE_SET(s));
        return ((void*)0);
}
