
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int MAKE_SET (int *) ;
 int PTR_TO_FD (void*) ;
 int close_nointr (int ) ;
 int log_debug (char*,int ) ;
 void* set_steal_first (int ) ;

void fdset_close(FDSet *s) {
        void *p;

        while ((p = set_steal_first(MAKE_SET(s)))) {
                log_debug("Closing set fd %i", PTR_TO_FD(p));
                (void) close_nointr(PTR_TO_FD(p));
        }
}
