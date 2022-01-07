
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int INT ;


 int ME_IsWSpace (int ) ;
 int TRACE (char*,int ,int,int,int) ;





 int debugstr_wn (int *,int) ;

__attribute__((used)) static int
ME_WordBreakProc(LPWSTR s, INT start, INT len, INT code)
{

  TRACE("s==%s, start==%d, len==%d, code==%d\n",
        debugstr_wn(s, len), start, len, code);

  switch (code)
  {
    case 132:
      return ME_IsWSpace(s[start]);
    case 131:
    case 130:
      while (start && ME_IsWSpace(s[start - 1]))
        start--;
      while (start && !ME_IsWSpace(s[start - 1]))
        start--;
      return start;
    case 128:
    case 129:
      while (start < len && !ME_IsWSpace(s[start]))
        start++;
      while (start < len && ME_IsWSpace(s[start]))
        start++;
      return start;
  }
  return 0;
}
