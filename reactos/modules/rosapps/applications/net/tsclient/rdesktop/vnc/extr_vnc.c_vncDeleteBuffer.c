
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; scalar_t__ owner; } ;
typedef TYPE_1__ vncBuffer ;


 int xfree (TYPE_1__*) ;

void
vncDeleteBuffer(vncBuffer * b)
{
 if (b->owner)
  xfree(b->data);
 xfree(b);
}
