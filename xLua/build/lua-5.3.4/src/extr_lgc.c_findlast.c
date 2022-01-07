
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ GCObject ;



__attribute__((used)) static GCObject **findlast (GCObject **p) {
  while (*p != ((void*)0))
    p = &(*p)->next;
  return p;
}
