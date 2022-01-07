
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long vlc_tick_t ;
typedef unsigned long long libvlc_time_t ;



__attribute__((used)) static inline libvlc_time_t from_mtime(vlc_tick_t time)
{
    return (time + 500ULL)/ 1000ULL;
}
