
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int BYTE ;


 int LDIR_FstClusLO ;
 size_t LDIR_Ord ;
 int LD_WORD (int*) ;
 int LLEF ;
 int* LfnOfs ;
 int _MAX_LFN ;
 scalar_t__ ff_wtoupper (int) ;

__attribute__((used)) static
int cmp_lfn (
 WCHAR* lfnbuf,
 BYTE* dir
)
{
 UINT i, s;
 WCHAR wc, uc;


 if (LD_WORD(dir + LDIR_FstClusLO) != 0) return 0;

 i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;

 for (wc = 1, s = 0; s < 13; s++) {
  uc = LD_WORD(dir + LfnOfs[s]);
  if (wc) {
   if (i >= _MAX_LFN || ff_wtoupper(uc) != ff_wtoupper(lfnbuf[i++]))
    return 0;
   wc = uc;
  } else {
   if (uc != 0xFFFF) return 0;
  }
 }

 if ((dir[LDIR_Ord] & LLEF) && wc && lfnbuf[i])
  return 0;

 return 1;
}
