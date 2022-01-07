
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * private_data; } ;
struct TYPE_5__ {int cmd_list; } ;
typedef TYPE_1__ RunModePrivateData ;
typedef TYPE_2__ Mode ;


 int g_free (TYPE_1__*) ;
 int g_strfreev (int ) ;

__attribute__((used)) static void run_mode_destroy ( Mode *sw )
{
    RunModePrivateData *rmpd = (RunModePrivateData *) sw->private_data;
    if ( rmpd != ((void*)0) ) {
        g_strfreev ( rmpd->cmd_list );
        g_free ( rmpd );
        sw->private_data = ((void*)0);
    }
}
