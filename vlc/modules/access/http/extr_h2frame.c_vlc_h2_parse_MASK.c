#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint_fast32_t ;
struct vlc_h2_parser {int (* parser ) (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int /*<<< orphan*/ ) ;} ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;

/* Variables and functions */
 int FUNC0 (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 size_t FUNC2 (struct vlc_h2_frame*) ; 
 int FUNC3 (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int /*<<< orphan*/ ) ; 

int FUNC4(struct vlc_h2_parser *p, struct vlc_h2_frame *f)
{
    int ret = 0;

    while (f != NULL)
    {
        struct vlc_h2_frame *next = f->next;
        size_t len = FUNC2(f);
        uint_fast32_t id = FUNC1(f);

        f->next = NULL;
        ret = p->parser(p, f, len, id);
        if (ret)
            p->parser = vlc_h2_parse_failed;
        f = next;
    }

    return ret;
}