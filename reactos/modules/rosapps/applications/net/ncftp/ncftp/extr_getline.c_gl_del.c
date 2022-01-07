
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_beep () ;
 char* gl_buf ;
 int gl_cnt ;
 int gl_fixup (int ,int,int) ;
 char* gl_killbuf ;
 int gl_pos ;
 int gl_prompt ;
 scalar_t__ gl_vi_mode ;

__attribute__((used)) static void
gl_del(int loc, int killsave)






{
    int i, j;

    if ((loc == -1 && gl_pos > 0) || (loc == 0 && gl_pos < gl_cnt)) {
        for (j=0, i=gl_pos+loc; i < gl_cnt; i++) {
     if ((j == 0) && (killsave != 0) && (gl_vi_mode != 0)) {
      gl_killbuf[0] = gl_buf[i];
      gl_killbuf[1] = '\0';
  j = 1;
     }
     gl_buf[i] = gl_buf[i+1];
 }
 gl_fixup(gl_prompt, gl_pos+loc, gl_pos+loc);
    } else
 gl_beep();
}
