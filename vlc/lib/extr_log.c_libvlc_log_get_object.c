
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_object_type; char* psz_header; uintptr_t i_object_id; } ;
typedef TYPE_1__ libvlc_log_t ;



void libvlc_log_get_object(const libvlc_log_t *ctx,
                           const char **restrict name,
                           const char **restrict header,
                           uintptr_t *restrict id)
{
    if (name != ((void*)0))
        *name = (ctx->psz_object_type != ((void*)0))
                ? ctx->psz_object_type : "generic";
    if (header != ((void*)0))
        *header = ctx->psz_header;
    if (id != ((void*)0))
        *id = ctx->i_object_id;
}
