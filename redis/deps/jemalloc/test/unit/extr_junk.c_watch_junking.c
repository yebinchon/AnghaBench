
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int saw_junking ;
 void* watch_for_junking ;

__attribute__((used)) static void
watch_junking(void *p) {
 watch_for_junking = p;
 saw_junking = 0;
}
