
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Flush ) () ;} ;


 TYPE_1__ ohandlers ;
 int stub1 () ;

void Flush(void)
{
    if(ohandlers.Flush)
        ohandlers.Flush();
}
