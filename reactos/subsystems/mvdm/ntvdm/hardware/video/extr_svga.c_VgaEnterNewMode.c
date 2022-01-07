
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCREEN_MODE ;
typedef int PCOORD ;
typedef int BOOL ;


 int ActiveFramebuffer ;
 int DisplayMessage (char*,int ) ;
 int EmulatorTerminate () ;
 int FALSE ;
 scalar_t__ GRAPHICS_MODE ;
 int GetLastError () ;
 int GraphicsFramebuffer ;
 int PaletteHandle ;
 scalar_t__ ScreenMode ;
 scalar_t__ TEXT_MODE ;
 int TRUE ;
 int TextFramebuffer ;
 int TextPaletteHandle ;
 int VgaConsoleCreateGraphicsScreen (int ,int ) ;
 int VgaConsoleCreateTextScreen (int ,int ) ;

__attribute__((used)) static BOOL VgaEnterNewMode(SCREEN_MODE NewScreenMode, PCOORD Resolution)
{

    if (NewScreenMode == TEXT_MODE)
    {


        if (!VgaConsoleCreateTextScreen(
                                        Resolution,
                                        TextPaletteHandle))
        {
            DisplayMessage(L"An unexpected VGA error occurred while switching into text mode. Error: %u", GetLastError());
            EmulatorTerminate();
            return FALSE;
        }


        ActiveFramebuffer = TextFramebuffer;


        ScreenMode = TEXT_MODE;

        return TRUE;
    }
    else
    {


        if (!VgaConsoleCreateGraphicsScreen(
                                            Resolution,
                                            PaletteHandle))
        {
            DisplayMessage(L"An unexpected VGA error occurred while switching into graphics mode. Error: %u", GetLastError());
            EmulatorTerminate();
            return FALSE;
        }


        ActiveFramebuffer = GraphicsFramebuffer;


        ScreenMode = GRAPHICS_MODE;

        return TRUE;
    }
}
