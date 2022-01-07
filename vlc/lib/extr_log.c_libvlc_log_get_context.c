
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_module; char* file; unsigned int line; } ;
typedef TYPE_1__ libvlc_log_t ;



void libvlc_log_get_context(const libvlc_log_t *ctx,
                            const char **restrict module,
                            const char **restrict file,
                            unsigned *restrict line)
{
    if (module != ((void*)0))
        *module = ctx->psz_module;
    if (file != ((void*)0))
        *file = ctx->file;
    if (line != ((void*)0))
        *line = ctx->line;
}
