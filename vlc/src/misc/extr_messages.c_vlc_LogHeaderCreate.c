
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_logger {int * ops; } ;
struct vlc_logger_header {struct vlc_logger logger; int header; struct vlc_logger* parent; } ;


 int header_ops ;
 struct vlc_logger_header* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

struct vlc_logger *vlc_LogHeaderCreate(struct vlc_logger *parent,
                                       const char *str)
{
    size_t len = strlen(str) + 1;
    struct vlc_logger_header *header = malloc(sizeof (*header) + len);
    if (unlikely(header == ((void*)0)))
        return ((void*)0);

    header->logger.ops = &header_ops;
    header->parent = parent;
    memcpy(header->header, str, len);
    return &header->logger;
}
