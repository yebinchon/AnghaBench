
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gate {int listen_id; } ;


 int memset (struct gate*,int ,int) ;
 struct gate* skynet_malloc (int) ;

struct gate *
gate_create(void) {
 struct gate * g = skynet_malloc(sizeof(*g));
 memset(g,0,sizeof(*g));
 g->listen_id = -1;
 return g;
}
