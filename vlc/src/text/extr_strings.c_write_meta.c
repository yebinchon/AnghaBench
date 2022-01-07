
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_type_t ;
struct vlc_memstream {int dummy; } ;
typedef int input_item_t ;


 int EOF ;
 int free (char*) ;
 char* input_item_GetMeta (int *,int ) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;

__attribute__((used)) static int write_meta(struct vlc_memstream *stream, input_item_t *item,
                      vlc_meta_type_t type)
{
    if (item == ((void*)0))
        return EOF;

    char *value = input_item_GetMeta(item, type);
    if (value == ((void*)0))
        return EOF;

    vlc_memstream_puts(stream, value);
    free(value);
    return 0;
}
