
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BUF_SIZE ;
 int gl_beep () ;
 scalar_t__* gl_buf ;
 int gl_cnt ;
 int gl_error (char*) ;
 int gl_extent ;
 int gl_fixup (int ,int,int) ;
 scalar_t__* gl_killbuf ;
 scalar_t__ gl_overwrite ;
 int gl_pos ;
 int gl_prompt ;
 scalar_t__ strlen (scalar_t__*) ;

__attribute__((used)) static void
gl_yank(void)

{
    int i, len;

    len = (int) strlen(gl_killbuf);
    if (len > 0) {
 if (gl_overwrite == 0) {
            if (gl_cnt + len >= GL_BUF_SIZE - 1)
         gl_error("\n*** Error: getline(): input buffer overflow\n");
            for (i=gl_cnt; i >= gl_pos; i--)
                gl_buf[i+len] = gl_buf[i];
     for (i=0; i < len; i++)
                gl_buf[gl_pos+i] = gl_killbuf[i];
            gl_fixup(gl_prompt, gl_pos, gl_pos+len);
 } else {
     if (gl_pos + len > gl_cnt) {
                if (gl_pos + len >= GL_BUF_SIZE - 1)
             gl_error("\n*** Error: getline(): input buffer overflow\n");
  gl_buf[gl_pos + len] = 0;
            }
     for (i=0; i < len; i++)
                gl_buf[gl_pos+i] = gl_killbuf[i];
     gl_extent = len;
            gl_fixup(gl_prompt, gl_pos, gl_pos+len);
 }
    } else
 gl_beep();
}
