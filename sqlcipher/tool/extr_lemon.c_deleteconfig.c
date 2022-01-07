
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {struct config* next; } ;


 struct config* freelist ;

void deleteconfig(struct config *old)
{
  old->next = freelist;
  freelist = old;
}
