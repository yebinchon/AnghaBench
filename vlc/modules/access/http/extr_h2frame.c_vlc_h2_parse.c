
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_h2_parser {int (* parser ) (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int ) ;} ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 int stub1 (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int ) ;
 int vlc_h2_frame_id (struct vlc_h2_frame*) ;
 size_t vlc_h2_frame_length (struct vlc_h2_frame*) ;
 int vlc_h2_parse_failed (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int ) ;

int vlc_h2_parse(struct vlc_h2_parser *p, struct vlc_h2_frame *f)
{
    int ret = 0;

    while (f != ((void*)0))
    {
        struct vlc_h2_frame *next = f->next;
        size_t len = vlc_h2_frame_length(f);
        uint_fast32_t id = vlc_h2_frame_id(f);

        f->next = ((void*)0);
        ret = p->parser(p, f, len, id);
        if (ret)
            p->parser = vlc_h2_parse_failed;
        f = next;
    }

    return ret;
}
