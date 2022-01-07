
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_UnlockMutex (int ) ;
 int chunk_get_mutex ;

void unlock_chunk_get_mutex(void)
{
   SDL_UnlockMutex(chunk_get_mutex);
}
