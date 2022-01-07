
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDGETLED ;
 int KDSETLED ;
 int O_NOCTTY ;
 int close (int) ;
 int ioctl (int,int ,...) ;
 int open (char*,int ) ;

__attribute__((used)) static void setled(int mask, int state)
{
  int fd;
  long int leds;

  if (( fd=open("/dev/console", O_NOCTTY)) != -1 )
  {
    if (ioctl (fd, KDGETLED, &leds) != -1)
    {
      leds &= 7;
      if (state)
        leds |= mask;
      else
        leds &= ~mask;
      ioctl (fd, KDSETLED, leds);
    }
    close(fd);
  }
}
