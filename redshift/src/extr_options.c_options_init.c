
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int temperature; void* brightness; void** gamma; } ;
struct TYPE_10__ {int temperature; void* brightness; void** gamma; } ;
struct TYPE_9__ {int start; int end; } ;
struct TYPE_8__ {int start; int end; } ;
struct TYPE_12__ {TYPE_4__ night; TYPE_3__ day; TYPE_2__ dusk; TYPE_1__ dawn; scalar_t__ use_time; int low; int high; } ;
struct TYPE_13__ {int temp_set; int use_fade; int preserve_gamma; scalar_t__ verbose; int mode; int * provider_args; int * provider; int * method_args; int * method; TYPE_5__ scheme; int * config_filepath; } ;
typedef TYPE_6__ options_t ;


 void* NAN ;
 int PROGRAM_MODE_CONTINUAL ;
 int TRANSITION_HIGH ;
 int TRANSITION_LOW ;

void
options_init(options_t *options)
{
 options->config_filepath = ((void*)0);


 options->scheme.high = TRANSITION_HIGH;
 options->scheme.low = TRANSITION_LOW;



 options->scheme.use_time = 0;
 options->scheme.dawn.start = -1;
 options->scheme.dawn.end = -1;
 options->scheme.dusk.start = -1;
 options->scheme.dusk.end = -1;

 options->scheme.day.temperature = -1;
 options->scheme.day.gamma[0] = NAN;
 options->scheme.day.brightness = NAN;

 options->scheme.night.temperature = -1;
 options->scheme.night.gamma[0] = NAN;
 options->scheme.night.brightness = NAN;


 options->temp_set = -1;

 options->method = ((void*)0);
 options->method_args = ((void*)0);

 options->provider = ((void*)0);
 options->provider_args = ((void*)0);

 options->use_fade = -1;
 options->preserve_gamma = 1;
 options->mode = PROGRAM_MODE_CONTINUAL;
 options->verbose = 0;
}
