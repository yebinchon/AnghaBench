
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor {int map; } ;


 int hash_new () ;
 int memset (struct harbor*,int ,int) ;
 struct harbor* skynet_malloc (int) ;

struct harbor *
harbor_create(void) {
 struct harbor * h = skynet_malloc(sizeof(*h));
 memset(h,0,sizeof(*h));
 h->map = hash_new();
 return h;
}
