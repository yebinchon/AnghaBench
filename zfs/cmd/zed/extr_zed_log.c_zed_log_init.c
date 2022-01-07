
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* identity; int* pipe_fd; } ;


 TYPE_1__ _ctx ;
 char* strrchr (char const*,char) ;

void
zed_log_init(const char *identity)
{
 if (identity) {
  const char *p = strrchr(identity, '/');
  _ctx.identity = (p != ((void*)0)) ? p + 1 : identity;
 } else {
  _ctx.identity = ((void*)0);
 }
 _ctx.pipe_fd[0] = -1;
 _ctx.pipe_fd[1] = -1;
}
