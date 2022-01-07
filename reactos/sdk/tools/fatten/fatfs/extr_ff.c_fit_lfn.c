
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int BYTE ;


 int AM_LFN ;
 size_t LDIR_Attr ;
 size_t LDIR_Chksum ;
 int LDIR_FstClusLO ;
 size_t LDIR_Ord ;
 size_t LDIR_Type ;
 int LLEF ;
 int* LfnOfs ;
 int ST_WORD (int*,int) ;

__attribute__((used)) static
void fit_lfn (
 const WCHAR* lfnbuf,
 BYTE* dir,
 BYTE ord,
 BYTE sum
)
{
 UINT i, s;
 WCHAR wc;


 dir[LDIR_Chksum] = sum;
 dir[LDIR_Attr] = AM_LFN;
 dir[LDIR_Type] = 0;
 ST_WORD(dir + LDIR_FstClusLO, 0);

 i = (ord - 1) * 13;
 s = wc = 0;
 do {
  if (wc != 0xFFFF) wc = lfnbuf[i++];
  ST_WORD(dir+LfnOfs[s], wc);
  if (!wc) wc = 0xFFFF;
 } while (++s < 13);
 if (wc == 0xFFFF || !lfnbuf[i]) ord |= LLEF;
 dir[LDIR_Ord] = ord;
}
