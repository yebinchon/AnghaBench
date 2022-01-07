
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUCHAR ;


 scalar_t__ LP_C ;
 int LP_DELAY ;
 int LP_PINITP ;
 int LP_PSELECP ;
 int WRITE_PORT_UCHAR (int ,int) ;

__attribute__((used)) static void Parallel_Reset(void)



{
   int i;

   WRITE_PORT_UCHAR((PUCHAR)LP_C,0);
   for (i=0;i<LP_DELAY;i++);
   WRITE_PORT_UCHAR((PUCHAR)LP_C,LP_PSELECP | LP_PINITP);
}
