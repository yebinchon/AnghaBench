
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_beep () ;
 char* gl_buf ;
 int gl_cnt ;
 int gl_fixup (int ,int,int) ;
 int gl_killbuf ;
 int gl_prompt ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
gl_kill(int pos)


{
    if (pos < gl_cnt) {
 strcpy(gl_killbuf, gl_buf + pos);
 gl_buf[pos] = '\0';
 gl_fixup(gl_prompt, pos, pos);
    } else
 gl_beep();
}
