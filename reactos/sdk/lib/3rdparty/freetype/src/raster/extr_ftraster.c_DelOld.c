
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* link; } ;
typedef TYPE_1__** PProfileList ;
typedef TYPE_1__* PProfile ;



__attribute__((used)) static void
  DelOld( PProfileList list,
          PProfile profile )
  {
    PProfile *old, current;


    old = list;
    current = *old;

    while ( current )
    {
      if ( current == profile )
      {
        *old = current->link;
        return;
      }

      old = &current->link;
      current = *old;
    }



  }
