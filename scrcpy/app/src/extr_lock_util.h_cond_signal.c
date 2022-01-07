
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_cond ;


 int LOGC (char*) ;
 scalar_t__ SDL_CondSignal (int *) ;
 int abort () ;

__attribute__((used)) static inline void
cond_signal(SDL_cond *cond) {
    if (SDL_CondSignal(cond)) {
        LOGC("Could not signal a condition");
        abort();
    }
}
