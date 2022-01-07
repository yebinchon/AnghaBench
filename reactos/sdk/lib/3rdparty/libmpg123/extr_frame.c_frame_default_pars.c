
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double outscale; int resync_limit; int preframes; int feedpool; int feedbuffer; int index_size; scalar_t__ timeout; scalar_t__ icy_interval; scalar_t__ verbose; scalar_t__ doublespeed; scalar_t__ halfspeed; scalar_t__ rva; scalar_t__ down_sample; scalar_t__ force_rate; int flags; } ;
typedef TYPE_1__ mpg123_pars ;


 int INDEX_SIZE ;
 int MPG123_AUTO_RESAMPLE ;
 int MPG123_GAPLESS ;
 int mpg123_fmt_all (TYPE_1__*) ;

__attribute__((used)) static void frame_default_pars(mpg123_pars *mp)
{
 mp->outscale = 1.0;
 mp->flags = 0;



 mp->flags |= MPG123_AUTO_RESAMPLE;

 mp->force_rate = 0;

 mp->down_sample = 0;
 mp->rva = 0;
 mp->halfspeed = 0;
 mp->doublespeed = 0;
 mp->verbose = 0;

 mp->icy_interval = 0;

 mp->timeout = 0;
 mp->resync_limit = 1024;



 mp->preframes = 4;
 mpg123_fmt_all(mp);


 mp->feedpool = 5;
 mp->feedbuffer = 4096;

}
