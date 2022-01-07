
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int istream_t ;
struct TYPE_3__ {int content_size; int content; } ;
typedef TYPE_1__ dictionary_t ;


 int BAD_ALLOC () ;
 int * IO_get_read_ptr (int * const,int ) ;
 int IO_istream_len (int * const) ;
 int malloc (int ) ;
 int memcpy (int ,int const* const,int ) ;

__attribute__((used)) static void init_dictionary_content(dictionary_t *const dict,
                                    istream_t *const in) {

    dict->content_size = IO_istream_len(in);
    dict->content = malloc(dict->content_size);
    if (!dict->content) {
        BAD_ALLOC();
    }

    const u8 *const content = IO_get_read_ptr(in, dict->content_size);

    memcpy(dict->content, content, dict->content_size);
}
