
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* outSizes; scalar_t__* inSizes; } ;
typedef TYPE_1__ CMtProgress ;



__attribute__((used)) static void MtProgress_Reinit(CMtProgress *p, unsigned index)
{
  p->inSizes[index] = 0;
  p->outSizes[index] = 0;
}
