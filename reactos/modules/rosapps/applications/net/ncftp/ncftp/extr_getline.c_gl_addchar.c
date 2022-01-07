
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BUF_SIZE ;
 char* gl_buf ;
 int gl_cnt ;
 int gl_error (char*) ;
 int gl_extent ;
 int gl_fixup (int ,int,int) ;
 scalar_t__ gl_overwrite ;
 int gl_pos ;
 int gl_prompt ;

__attribute__((used)) static void
gl_addchar(int c)


{
    int i;

    if (gl_cnt >= GL_BUF_SIZE - 1)
 gl_error("\n*** Error: getline(): input buffer overflow\n");
    if (gl_overwrite == 0 || gl_pos == gl_cnt) {
        for (i=gl_cnt; i >= gl_pos; i--)
            gl_buf[i+1] = gl_buf[i];
        gl_buf[gl_pos] = (char) c;
        gl_fixup(gl_prompt, gl_pos, gl_pos+1);
    } else {
 gl_buf[gl_pos] = (char) c;
 gl_extent = 1;
        gl_fixup(gl_prompt, gl_pos, gl_pos+1);
    }
}
