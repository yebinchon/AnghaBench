
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_mutex ;
typedef int SDL_cond ;


 int LOGC (char*) ;
 scalar_t__ SDL_CondWait (int *,int *) ;
 int abort () ;

__attribute__((used)) static inline void
cond_wait(SDL_cond *cond, SDL_mutex *mutex) {
    if (SDL_CondWait(cond, mutex)) {
        LOGC("Could not wait on condition");
        abort();
    }
}
