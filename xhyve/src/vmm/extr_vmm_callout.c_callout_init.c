
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int wait; } ;


 int abort () ;
 int memset (struct callout*,int ,int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;

void callout_init(struct callout *c, int mpsafe) {
  if (!mpsafe) {
    abort();
  }

  memset(c, 0, sizeof(struct callout));

  if (pthread_cond_init(&c->wait, ((void*)0))) {
    abort();
  }
}
