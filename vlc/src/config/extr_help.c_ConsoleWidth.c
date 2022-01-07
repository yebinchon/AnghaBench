
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winsize {int ws_col; int uw_height; int uw_vs; } ;
struct uwdata {int ws_col; int uw_height; int uw_vs; } ;
struct TYPE_4__ {int X; } ;
struct TYPE_5__ {TYPE_1__ dwSize; } ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 int STDOUT_FILENO ;
 int STD_OUTPUT_HANDLE ;
 int TIOCGWINSZ ;
 int WIOCGETD ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;

__attribute__((used)) static unsigned ConsoleWidth(void)
{
    return 80;
}
