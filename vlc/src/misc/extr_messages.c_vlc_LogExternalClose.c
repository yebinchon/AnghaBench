
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_logger_external {int opaque; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* destroy ) (int ) ;} ;


 int free (struct vlc_logger_external*) ;
 int stub1 (int ) ;

__attribute__((used)) static void vlc_LogExternalClose(void *d)
{
    struct vlc_logger_external *ext = d;

    if (ext->ops->destroy != ((void*)0))
        ext->ops->destroy(ext->opaque);
    free(ext);
}
