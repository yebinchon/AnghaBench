
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* gl_buf ;
 int gl_fixup (int ,int ,int ) ;
 int gl_in_hook (scalar_t__*) ;
 int gl_pos ;
 int gl_prompt ;
 scalar_t__ gl_search_mode ;
 int hist_last ;
 int hist_pos ;

__attribute__((used)) static void
search_term(void)
{
    gl_search_mode = 0;
    if (gl_buf[0] == 0)
        hist_pos = hist_last;
    if (gl_in_hook)
 gl_in_hook(gl_buf);
    gl_fixup(gl_prompt, 0, gl_pos);
}
