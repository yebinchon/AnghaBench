
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int * Key; } ;
typedef int * PWCHAR ;
typedef int * PVOID ;
typedef TYPE_1__* PINFCACHELINE ;
typedef int PCWSTR ;


 int DPRINT1 (char*) ;
 scalar_t__ MALLOC (int) ;
 int strcpyW (int *,int ) ;
 int strlenW (int ) ;

PVOID
InfpAddKeyToLine(PINFCACHELINE Line,
                 PCWSTR Key)
{
  if (Line == ((void*)0))
    {
      DPRINT1("Invalid Line\n");
      return ((void*)0);
    }

  if (Line->Key != ((void*)0))
    {
      DPRINT1("Line already has a key\n");
      return ((void*)0);
    }

  Line->Key = (PWCHAR)MALLOC((strlenW(Key) + 1) * sizeof(WCHAR));
  if (Line->Key == ((void*)0))
    {
      DPRINT1("MALLOC() failed\n");
      return ((void*)0);
    }

  strcpyW(Line->Key, Key);

  return (PVOID)Line->Key;
}
