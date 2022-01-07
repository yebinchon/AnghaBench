
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConsoleShutdownHercules () ;
 int ConsoleShutdownSerial () ;
 int ConsoleShutdownVga () ;
 int ENTER_FUNC () ;
 int KeStallExecutionProcessor (int) ;
 int LEAVE_FUNC () ;





 int eTerminalMode ;

void ConsoleShutdown(void)
{
    ENTER_FUNC();


    KeStallExecutionProcessor(1000*5000);

 switch(eTerminalMode)
    {
        case 132:
            ConsoleShutdownHercules();
            break;
        case 131:
            break;
        case 128:
            ConsoleShutdownVga();
            break;
        case 129:
            ConsoleShutdownSerial();
            break;
        case 130:
        default:

            break;
    }

    LEAVE_FUNC();
}
