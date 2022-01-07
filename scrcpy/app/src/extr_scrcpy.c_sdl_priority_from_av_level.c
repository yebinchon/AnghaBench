
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_LogPriority ;







 int SDL_LOG_PRIORITY_CRITICAL ;
 int SDL_LOG_PRIORITY_ERROR ;
 int SDL_LOG_PRIORITY_INFO ;
 int SDL_LOG_PRIORITY_WARN ;

__attribute__((used)) static SDL_LogPriority
sdl_priority_from_av_level(int level) {
    switch (level) {
        case 129:
        case 131:
            return SDL_LOG_PRIORITY_CRITICAL;
        case 132:
            return SDL_LOG_PRIORITY_ERROR;
        case 128:
            return SDL_LOG_PRIORITY_WARN;
        case 130:
            return SDL_LOG_PRIORITY_INFO;
    }

    return 0;
}
