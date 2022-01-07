
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X; scalar_t__* offset; int flags; struct TYPE_4__* link; int height; } ;
typedef TYPE_1__** PProfileList ;
typedef TYPE_1__* PProfile ;


 int Flow_Up ;

__attribute__((used)) static void
  Sort( PProfileList list )
  {
    PProfile *old, current, next;



    current = *list;
    while ( current )
    {
      current->X = *current->offset;
      current->offset += ( current->flags & Flow_Up ) ? 1 : -1;
      current->height--;
      current = current->link;
    }


    old = list;
    current = *old;

    if ( !current )
      return;

    next = current->link;

    while ( next )
    {
      if ( current->X <= next->X )
      {
        old = &current->link;
        current = *old;

        if ( !current )
          return;
      }
      else
      {
        *old = next;
        current->link = next->link;
        next->link = current;

        old = list;
        current = *old;
      }

      next = current->link;
    }
  }
