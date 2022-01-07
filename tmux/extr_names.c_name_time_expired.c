
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int name_time; } ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 scalar_t__ NAME_INTERVAL ;
 int timersub (struct timeval*,int *,struct timeval*) ;

__attribute__((used)) static int
name_time_expired(struct window *w, struct timeval *tv)
{
 struct timeval offset;

 timersub(tv, &w->name_time, &offset);
 if (offset.tv_sec != 0 || offset.tv_usec > NAME_INTERVAL)
  return (0);
 return (NAME_INTERVAL - offset.tv_usec);
}
