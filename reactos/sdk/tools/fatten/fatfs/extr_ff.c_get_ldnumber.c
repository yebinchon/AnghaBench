
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT ;
typedef char TCHAR ;


 int CurrVol ;
 scalar_t__ IsLower (char) ;
 scalar_t__ _USE_LFN ;
 char _VOLUMES ;


__attribute__((used)) static
int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 UINT i;
 int vol = -1;
 if (*path) {
  for (tt = *path; (UINT)*tt >= (_USE_LFN ? ' ' : '!') && *tt != ':'; tt++) ;
  if (*tt == ':') {
   tp = *path;
   i = *tp++ - '0';
   if (i < 10 && tp == tt) {
    if (i < _VOLUMES) {
     vol = (int)i;
     *path = ++tt;
    }
   }
   return vol;
  }



  vol = 0;

 }
 return vol;
}
