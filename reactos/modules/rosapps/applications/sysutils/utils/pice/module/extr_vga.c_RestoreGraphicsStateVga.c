
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int PICE_memcpy (int ,int ,int ) ;
 int SCREEN_BUFFER_SIZE ;
 int cGraphTable2 ;
 int inb_p (int) ;
 int load_font (int ,int ) ;
 int outb_p (int,int) ;
 int pScreenBufferHardwareVga ;
 int pScreenBufferSaveVga ;
 int pScreenBufferTempVga ;
 int pScreenBufferVga ;
 int pice_restore_current_registers () ;

void RestoreGraphicsStateVga(void)
{
 UCHAR data;


 outb_p(0x11,0x3d4);
 data = inb_p(0x3d5);
 outb_p(data & 0x7F,0x3d5);


 pice_restore_current_registers();


 load_font(cGraphTable2,0);

    pScreenBufferVga = pScreenBufferSaveVga;

    PICE_memcpy(pScreenBufferVga,pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);

    PICE_memcpy(pScreenBufferHardwareVga,pScreenBufferTempVga,SCREEN_BUFFER_SIZE);
}
