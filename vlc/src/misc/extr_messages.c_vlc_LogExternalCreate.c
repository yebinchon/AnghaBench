
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_logger_operations {int dummy; } ;
struct vlc_logger {int * ops; } ;
struct vlc_logger_external {struct vlc_logger logger; void* opaque; struct vlc_logger_operations const* ops; } ;


 int external_ops ;
 struct vlc_logger_external* malloc (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct vlc_logger *
vlc_LogExternalCreate(const struct vlc_logger_operations *ops, void *opaque)
{
    struct vlc_logger_external *ext = malloc(sizeof (*ext));
    if (unlikely(ext == ((void*)0)))
        return ((void*)0);

    ext->logger.ops = &external_ops;
    ext->ops = ops;
    ext->opaque = opaque;
    return &ext->logger;
}
