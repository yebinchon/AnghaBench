
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int footer; } ;
typedef TYPE_1__ vlc_logger_sys_t ;


 int fclose (int ) ;
 int fputs (int ,int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void Close(void *opaque)
{
    vlc_logger_sys_t *sys = opaque;

    fputs(sys->footer, sys->stream);
    fclose(sys->stream);
    free(sys);
}
