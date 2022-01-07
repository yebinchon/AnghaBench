
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_mutex ;


 int LOGC (char*) ;
 scalar_t__ SDL_LockMutex (int *) ;
 int abort () ;

__attribute__((used)) static inline void
mutex_lock(SDL_mutex *mutex) {
    if (SDL_LockMutex(mutex)) {
        LOGC("Could not lock mutex");
        abort();
    }
}
