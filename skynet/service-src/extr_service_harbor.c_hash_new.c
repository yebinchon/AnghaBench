
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int memset (struct hashmap*,int ,int) ;
 struct hashmap* skynet_malloc (int) ;

__attribute__((used)) static struct hashmap *
hash_new() {
 struct hashmap * h = skynet_malloc(sizeof(struct hashmap));
 memset(h,0,sizeof(*h));
 return h;
}
