
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int DwarfAbbrev ;
typedef int Dwarf ;


 int * findabbrev (int *,int,int ) ;
 int loadabbrevs (int *,int ,int **) ;
 int * nil ;
 int werrstr (char*) ;

DwarfAbbrev*
dwarfgetabbrev(Dwarf *d, ulong off, ulong num)
{
 DwarfAbbrev *a;
 int na;

 if((na = loadabbrevs(d, off, &a)) < 0){
  werrstr("loadabbrevs: %r");
  return nil;
 }
 return findabbrev(a, na, num);
}
