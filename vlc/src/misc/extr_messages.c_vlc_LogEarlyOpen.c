
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_logger {int * ops; } ;
struct TYPE_3__ {struct vlc_logger logger; struct vlc_logger* sink; int * head; int ** tailp; int lock; } ;
typedef TYPE_1__ vlc_logger_early_t ;


 int early_ops ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static struct vlc_logger *vlc_LogEarlyOpen(struct vlc_logger *logger)
{
    vlc_logger_early_t *early = malloc(sizeof (*early));
    if (unlikely(early == ((void*)0)))
        return ((void*)0);

    early->logger.ops = &early_ops;
    vlc_mutex_init(&early->lock);
    early->head = ((void*)0);
    early->tailp = &early->head;
    early->sink = logger;
    return &early->logger;
}
