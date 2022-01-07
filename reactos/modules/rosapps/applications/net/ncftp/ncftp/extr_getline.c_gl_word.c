
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gl_buf ;
 int gl_cnt ;
 int gl_fixup (int ,int,int) ;
 int gl_pos ;
 int gl_prompt ;
 scalar_t__ isspace (int ) ;

__attribute__((used)) static void
gl_word(int direction)


{
    int pos = gl_pos;

    if (direction > 0) {
        while (!isspace(gl_buf[pos]) && pos < gl_cnt)
     pos++;
 while (isspace(gl_buf[pos]) && pos < gl_cnt)
     pos++;
    } else {
 if (pos > 0)
     pos--;
 while (isspace(gl_buf[pos]) && pos > 0)
     pos--;
        while (!isspace(gl_buf[pos]) && pos > 0)
     pos--;
 if (pos < gl_cnt && isspace(gl_buf[pos]))
     pos++;
    }
    gl_fixup(gl_prompt, -1, pos);
}
