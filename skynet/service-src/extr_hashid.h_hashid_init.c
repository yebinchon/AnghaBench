
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashid_node {int dummy; } ;
struct hashid {int hashmod; int cap; void* hash; TYPE_1__* id; scalar_t__ count; } ;
struct TYPE_2__ {int id; int * next; } ;


 int memset (void*,int ,int) ;
 void* skynet_malloc (int) ;

__attribute__((used)) static void
hashid_init(struct hashid *hi, int max) {
 int i;
 int hashcap;
 hashcap = 16;
 while (hashcap < max) {
  hashcap *= 2;
 }
 hi->hashmod = hashcap - 1;
 hi->cap = max;
 hi->count = 0;
 hi->id = skynet_malloc(max * sizeof(struct hashid_node));
 for (i=0;i<max;i++) {
  hi->id[i].id = -1;
  hi->id[i].next = ((void*)0);
 }
 hi->hash = skynet_malloc(hashcap * sizeof(struct hashid_node *));
 memset(hi->hash, 0, hashcap * sizeof(struct hashid_node *));
}
