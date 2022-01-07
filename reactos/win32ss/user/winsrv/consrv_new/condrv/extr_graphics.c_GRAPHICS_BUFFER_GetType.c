
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCONSOLE_SCREEN_BUFFER ;
typedef int CONSOLE_IO_OBJECT_TYPE ;


 int GRAPHICS_BUFFER ;

CONSOLE_IO_OBJECT_TYPE
GRAPHICS_BUFFER_GetType(PCONSOLE_SCREEN_BUFFER This)
{

    return GRAPHICS_BUFFER;
}
