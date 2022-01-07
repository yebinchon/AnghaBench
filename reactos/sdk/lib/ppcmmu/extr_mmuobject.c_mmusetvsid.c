
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Booted ;
 int GetSR (int) ;
 int PPC_VSID_MASK ;
 int * Segs ;
 int SetSR (int,int) ;
 int* Vsid ;
 int findvsid (int) ;

void mmusetvsid(int start, int end, int vsid)
{
    int i, sr, s_vsid;
    for(i = start; i < end; i++)
    {
 s_vsid = (vsid << 4) | (i & 15);
 sr = (GetSR(i) & ~PPC_VSID_MASK) | s_vsid;
 if (Booted)
            SetSR(i, sr);
 Segs[i] = findvsid(s_vsid);
        Vsid[i] = vsid;
    }
}
