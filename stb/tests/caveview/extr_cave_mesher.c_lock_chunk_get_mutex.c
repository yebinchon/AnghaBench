
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_LockMutex (int ) ;
 int chunk_get_mutex ;

void lock_chunk_get_mutex(void)
{
   SDL_LockMutex(chunk_get_mutex);
}
