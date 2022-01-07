
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_beep () ;
 int* gl_buf ;
 int gl_cnt ;
 int gl_extent ;
 int gl_fixup (int ,int,int) ;
 int gl_pos ;
 int gl_prompt ;

__attribute__((used)) static void
gl_transpose(void)

{
    int c;

    if (gl_pos > 0 && gl_cnt > gl_pos) {
 c = gl_buf[gl_pos-1];
 gl_buf[gl_pos-1] = gl_buf[gl_pos];
 gl_buf[gl_pos] = (char) c;
 gl_extent = 2;
 gl_fixup(gl_prompt, gl_pos-1, gl_pos);
    } else
 gl_beep();
}
