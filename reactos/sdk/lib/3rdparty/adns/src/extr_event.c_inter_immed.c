
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int timerclear (struct timeval*) ;

__attribute__((used)) static void inter_immed(struct timeval **tv_io, struct timeval *tvbuf) {
  struct timeval *rbuf;

  if (!tv_io) return;

  rbuf= *tv_io;
  if (!rbuf) { *tv_io= rbuf= tvbuf; }

  timerclear(rbuf);
}
