
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int* PUSHORT ;


 int ENTER_FUNC () ;
 int GLOBAL_SCREEN_WIDTH ;
 int LEAVE_FUNC () ;
 scalar_t__* pVgaOffset ;

void HatchLineHercules(ULONG line)
{
 USHORT cc;
    ULONG i,j;
    ULONG _line = (line<<3) ;
 PUSHORT p;
    USHORT mask_odd[]={0x8888,0x2222};
    USHORT mask_even[]={0xaaaa,0x5555};
    PUSHORT pmask;

    ENTER_FUNC();

    pmask = (line&1)?mask_odd:mask_even;

 for(j=0;j<8;j++,_line++)
 {
  p=(PUSHORT)( pVgaOffset[_line&3] + (90*(_line>>2)) );
  for(i=0;i<(GLOBAL_SCREEN_WIDTH/sizeof(USHORT));i++)
  {
   cc = p[i];

   p[i]=(p[i]^pmask[j&1])|cc;
  }
 }

    LEAVE_FUNC();
}
