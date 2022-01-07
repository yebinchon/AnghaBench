
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int PICE_memcpy (int ,int ,int ) ;
 int SCREEN_BUFFER_SIZE ;
 int cGraphTable ;
 int cGraphTable2 ;
 int inb_p (int) ;
 int load_font (int ,int) ;
 int outb_p (int,int) ;
 int pScreenBufferHardwareVga ;
 int pScreenBufferSaveVga ;
 int pScreenBufferTempVga ;
 int pScreenBufferVga ;
 int pice_save_current_registers () ;
 int pice_set_mode_3_80x25 () ;
 int pice_set_mode_3_80x50 () ;
 int save_font (int ) ;

void SaveGraphicsStateVga(void)
{
 UCHAR data;


 pice_save_current_registers();


 outb_p(0x11,0x3d4);
 data = inb_p(0x3d5);
 outb_p(data & 0x7F,0x3d5);


 save_font(cGraphTable2);





 pice_set_mode_3_80x25();



 load_font(cGraphTable,1);


    PICE_memcpy(pScreenBufferTempVga,pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);

    PICE_memcpy(pScreenBufferHardwareVga,pScreenBufferVga,SCREEN_BUFFER_SIZE);

    pScreenBufferSaveVga = pScreenBufferVga;

    pScreenBufferVga = pScreenBufferHardwareVga;
}
