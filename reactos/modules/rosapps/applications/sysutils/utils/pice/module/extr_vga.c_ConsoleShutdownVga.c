
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int FONTBUFFERSIZE ;
 int LEAVE_FUNC () ;
 int MmUnmapIoSpace (int ,int ) ;
 int PICE_free (scalar_t__) ;
 int SCREEN_BUFFER_SIZE ;
 int pFontBufferVga ;
 int pScreenBufferHardwareVga ;
 scalar_t__ pScreenBufferTempVga ;
 scalar_t__ pScreenBufferVga ;

void ConsoleShutdownVga(void)
{
    ENTER_FUNC();

 if(pScreenBufferVga)
    {
        PICE_free(pScreenBufferVga);
        PICE_free(pScreenBufferTempVga);
  MmUnmapIoSpace(pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);
  MmUnmapIoSpace(pFontBufferVga,FONTBUFFERSIZE);
    }

    LEAVE_FUNC();
}
