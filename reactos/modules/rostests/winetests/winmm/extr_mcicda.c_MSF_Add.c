
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int DWORD ;


 int CDFRAMES_PERSEC ;
 int MCI_MAKE_MSF (int,int,int) ;
 int MCI_MSF_FRAME (int ) ;
 int MCI_MSF_MINUTE (int ) ;
 int MCI_MSF_SECOND (int ) ;

__attribute__((used)) static DWORD MSF_Add(DWORD d1, DWORD d2)
{
    WORD c, m, s, f;
    f = MCI_MSF_FRAME(d1) + MCI_MSF_FRAME(d2);
    c = f / CDFRAMES_PERSEC;
    f = f % CDFRAMES_PERSEC;
    s = MCI_MSF_SECOND(d1) + MCI_MSF_SECOND(d2) + c;
    c = s / 60;
    s = s % 60;
    m = MCI_MSF_MINUTE(d1) + MCI_MSF_MINUTE(d2) + c;
    return MCI_MAKE_MSF(m,s,f);
}
