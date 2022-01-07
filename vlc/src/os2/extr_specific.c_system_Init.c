
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_BINARY ;
 int _fmode_bin ;
 int fileno (int ) ;
 int setmode (int ,int ) ;
 int stdin ;

void system_Init( void )
{

    _fmode_bin = 1;
    setmode( fileno( stdin ), O_BINARY );
}
