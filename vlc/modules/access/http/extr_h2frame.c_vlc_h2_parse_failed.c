
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;


 int free (struct vlc_h2_frame*) ;

__attribute__((used)) static int vlc_h2_parse_failed(struct vlc_h2_parser *p, struct vlc_h2_frame *f,
                               size_t len, uint_fast32_t id)
{
    free(f);
    (void) p; (void) len; (void) id;
    return -1;
}
