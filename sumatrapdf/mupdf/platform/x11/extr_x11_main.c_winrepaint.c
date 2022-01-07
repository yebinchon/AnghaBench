
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in_transit; } ;
typedef TYPE_1__ pdfapp_t ;


 int dirty ;
 int transition_dirty ;

void winrepaint(pdfapp_t *app)
{
 dirty = 1;
 if (app->in_transit)
  transition_dirty = 1;
}
