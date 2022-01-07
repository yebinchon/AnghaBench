
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int default_resolution; int resolution; } ;
typedef TYPE_1__ pdfapp_t ;



void pdfapp_setresolution(pdfapp_t *app, int res)
{
 app->default_resolution = res;
 app->resolution = res;
}
