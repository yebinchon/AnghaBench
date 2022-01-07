
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int left; scalar_t__ normal_is_valid; scalar_t__ seeded; } ;
typedef TYPE_1__ THGenerator ;


 TYPE_1__* THAlloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static THGenerator* THGenerator_newUnseeded()
{
  THGenerator *self = THAlloc(sizeof(THGenerator));
  memset(self, 0, sizeof(THGenerator));
  self->left = 1;
  self->seeded = 0;
  self->normal_is_valid = 0;
  return self;
}
