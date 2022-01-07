
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;
struct vlc_http_file {struct vlc_http_resource resource; scalar_t__ offset; } ;


 int free (struct vlc_http_file*) ;
 struct vlc_http_file* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_http_file_callbacks ;
 scalar_t__ vlc_http_res_init (struct vlc_http_resource*,int *,struct vlc_http_mgr*,char const*,char const*,char const*) ;

struct vlc_http_resource *vlc_http_file_create(struct vlc_http_mgr *mgr,
                                               const char *uri, const char *ua,
                                               const char *ref)
{
    struct vlc_http_file *file = malloc(sizeof (*file));
    if (unlikely(file == ((void*)0)))
        return ((void*)0);

    if (vlc_http_res_init(&file->resource, &vlc_http_file_callbacks, mgr,
                          uri, ua, ref))
    {
        free(file);
        return ((void*)0);
    }

    file->offset = 0;
    return &file->resource;
}
