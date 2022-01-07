
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ halfspeed; } ;
struct TYPE_5__ {int lay; int ssize; int bsbuf; int ssave; TYPE_1__ p; } ;
typedef TYPE_2__ mpg123_handle ;


 int debug (char*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void halfspeed_prepare(mpg123_handle *fr)
{

 if(fr->p.halfspeed && fr->lay == 3)
 {
  debug("halfspeed - reusing old bsbuf ");
  memcpy (fr->ssave, fr->bsbuf, fr->ssize);
 }
}
