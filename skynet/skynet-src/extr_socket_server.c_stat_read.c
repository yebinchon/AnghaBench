
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {int time; } ;
struct TYPE_2__ {int read; int rtime; } ;
struct socket {TYPE_1__ stat; } ;



__attribute__((used)) static inline void
stat_read(struct socket_server *ss, struct socket *s, int n) {
 s->stat.read += n;
 s->stat.rtime = ss->time;
}
