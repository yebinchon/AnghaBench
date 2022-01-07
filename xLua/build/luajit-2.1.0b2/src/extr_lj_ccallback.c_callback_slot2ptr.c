
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {scalar_t__ mcode; } ;
struct TYPE_5__ {TYPE_1__ cb; } ;
typedef int MSize ;
typedef TYPE_2__ CTState ;


 int CALLBACK_SLOT2OFS (int ) ;

__attribute__((used)) static void *callback_slot2ptr(CTState *cts, MSize slot)
{
  return (uint8_t *)cts->cb.mcode + CALLBACK_SLOT2OFS(slot);
}
