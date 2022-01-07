
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isAutoSpacing; } ;
typedef TYPE_1__ THFile ;



void THFile_autoSpacing(THFile *self)
{
  self->isAutoSpacing = 1;
}
