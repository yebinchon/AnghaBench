
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__ LONG ;
typedef scalar_t__ INT ;


 scalar_t__ ColorCmp (int const,int const) ;

__attribute__((used)) static INT countDiffRLE8(const WORD *lpP, const WORD *lpA, const WORD *lpB, INT pos, LONG lDist, LONG width)
{
  INT count;

  for (count = 0; pos < width; pos++, count++) {
    if (ColorCmp(lpA[pos], lpB[pos]) <= lDist) {

      if (pos + 1 < width && ColorCmp(lpB[pos], lpB[pos+1]) <= lDist)
 return count - 1;
      if (pos + 2 < width && ColorCmp(lpB[pos+1], lpB[pos+2]) <= lDist)
 return count - 1;
    } else if (lpP != ((void*)0) && ColorCmp(lpP[pos], lpB[pos]) <= lDist) {

      INT count2 = 0;

      for (count2 = 0, pos++; pos < width && count2 <= 5; pos++, count2++) {
 if (ColorCmp(lpP[pos], lpB[pos]) > lDist)
   break;
      }
      if (count2 > 4)
 return count;

      pos -= count2;
    }
  }

  return count;
}
