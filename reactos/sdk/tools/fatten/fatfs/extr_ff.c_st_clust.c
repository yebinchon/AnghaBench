
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int DIR_FstClusHI ;
 int DIR_FstClusLO ;
 int ST_WORD (int *,int) ;

__attribute__((used)) static
void st_clust (
 BYTE* dir,
 DWORD cl
)
{
 ST_WORD(dir + DIR_FstClusLO, cl);
 ST_WORD(dir + DIR_FstClusHI, cl >> 16);
}
