
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int SDL_mutex ;
typedef int SDL_cond ;


 int LOGC (char*) ;
 int SDL_CondWaitTimeout (int *,int *,int ) ;
 int abort () ;

__attribute__((used)) static inline int
cond_wait_timeout(SDL_cond *cond, SDL_mutex *mutex, uint32_t ms) {
    int r = SDL_CondWaitTimeout(cond, mutex, ms);
    if (r < 0) {
        LOGC("Could not wait on condition with timeout");
        abort();
    }
    return r;
}
