
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUCHAR ;


 int DPRINT (char*) ;
 scalar_t__ LP_B ;
 scalar_t__ LP_C ;
 int LP_PBUSY ;
 unsigned char LP_PINITP ;
 unsigned char LP_PSELECP ;
 unsigned char LP_PSTROBE ;
 int LP_S ;
 int WRITE_PORT_UCHAR (int ,unsigned char) ;

__attribute__((used)) static void Parallel_putchar(unsigned char ch)





{

 int count=0;
 int status;
 int wait=0;

 do
   {
      status=LP_S;
      count++;
   }
 while ( count < 500000 && !(status & LP_PBUSY) );

 if (count==500000)
   {
      DPRINT("printer_putchar(): timed out\n");
      return;
   }

 WRITE_PORT_UCHAR((PUCHAR)LP_B,ch);
 while (wait != 10000) { wait++; }
 WRITE_PORT_UCHAR((PUCHAR)LP_C, (LP_PSELECP | LP_PINITP | LP_PSTROBE ));
 while (wait) { wait--; }
 WRITE_PORT_UCHAR((PUCHAR)LP_C, LP_PSELECP | LP_PINITP);
}
