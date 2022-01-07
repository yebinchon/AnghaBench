
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSAFLUSH ;
 int orig_termios ;
 scalar_t__ rawmode ;
 int tcsetattr (int,int ,int *) ;

__attribute__((used)) static void disableRawMode(int fd) {

    if (rawmode && tcsetattr(fd,TCSAFLUSH,&orig_termios) != -1)
        rawmode = 0;
}
