
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcache1Free (void*) ;

void sqlite3PageFree(void *p){
  pcache1Free(p);
}
