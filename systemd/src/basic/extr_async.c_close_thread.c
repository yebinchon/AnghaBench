
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int PTR_TO_FD (void*) ;
 int assert_se (int) ;
 int close_nointr (int ) ;
 int pthread_self () ;
 int pthread_setname_np (int ,char*) ;

__attribute__((used)) static void *close_thread(void *p) {
        (void) pthread_setname_np(pthread_self(), "close");

        assert_se(close_nointr(PTR_TO_FD(p)) != -EBADF);
        return ((void*)0);
}
