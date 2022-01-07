
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PUSHORT ;


 int GLOBAL_SCREEN_WIDTH ;
 scalar_t__* pVgaOffset ;

void InvertLineHercules(ULONG line)
{
    ULONG i,j;
    ULONG _line = line<<3;
 PUSHORT p;



 for(j=0;j<8;j++)
 {
  p=(PUSHORT)( pVgaOffset[_line&3] + (90*(_line>>2)) );
  for(i=0;i<(GLOBAL_SCREEN_WIDTH>>1);i++)
  {
   p[i]=~p[i];
  }
  _line++;
 }


}
