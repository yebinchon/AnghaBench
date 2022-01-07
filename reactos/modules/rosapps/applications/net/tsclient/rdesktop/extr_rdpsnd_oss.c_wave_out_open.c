
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dsp_; } ;
typedef int BOOL ;


 int F_GETFL ;
 int F_SETFL ;
 int False ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 TYPE_1__* This ;
 int True ;
 int fcntl (int,int ,...) ;
 char* getenv (char*) ;
 int open (char*,int) ;
 int perror (char*) ;
 char* xstrdup (char*) ;

BOOL
wave_out_open(void)
{
 char *dsp_dev = getenv("AUDIODEV");

 if (dsp_dev == ((void*)0))
 {
  dsp_dev = xstrdup("/dev/dsp");
 }

 if ((This->dsp_ = open(dsp_dev, O_WRONLY | O_NONBLOCK)) == -1)
 {
  perror(dsp_dev);
  return False;
 }


 fcntl(This->dsp_, F_SETFL, fcntl(This->dsp_, F_GETFL) | O_NONBLOCK);
 return True;
}
