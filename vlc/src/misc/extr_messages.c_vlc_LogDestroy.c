
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_logger_t ;
struct TYPE_5__ {int (* destroy ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

void vlc_LogDestroy(vlc_logger_t *logger)
{
    logger->ops->destroy(logger);
}
