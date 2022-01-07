
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ AVOutputFormat ;


 TYPE_1__* av_muxer_iterate (void**) ;
 TYPE_1__* av_oformat_next (TYPE_1__ const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const AVOutputFormat *
find_muxer(const char *name) {



    const AVOutputFormat *oformat = ((void*)0);
    do {



        oformat = av_oformat_next(oformat);


    } while (oformat && strcmp(oformat->name, name));
    return oformat;
}
