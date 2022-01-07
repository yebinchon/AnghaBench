
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Next; int * Key; } ;
struct TYPE_5__ {TYPE_2__* FirstLine; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int PCWSTR ;


 scalar_t__ strcmpiW (int *,int ) ;

PINFCACHELINE
InfpFindKeyLine(PINFCACHESECTION Section,
                PCWSTR Key)
{
  PINFCACHELINE Line;

  Line = Section->FirstLine;
  while (Line != ((void*)0))
    {
      if (Line->Key != ((void*)0) && strcmpiW(Line->Key, Key) == 0)
        {
          return Line;
        }

      Line = Line->Next;
    }

  return ((void*)0);
}
