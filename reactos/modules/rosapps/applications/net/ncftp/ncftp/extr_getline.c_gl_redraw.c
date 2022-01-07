
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_fixup (int ,int,int ) ;
 scalar_t__ gl_init_done ;
 int gl_pos ;
 int gl_prompt ;
 int gl_putc (char) ;

__attribute__((used)) static void
gl_redraw(void)

{
    if (gl_init_done > 0) {
        gl_putc('\n');
        gl_fixup(gl_prompt, -2, gl_pos);
    }
}
