
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gl_buf ;
 int gl_cnt ;
 int gl_del (int ,int ) ;
 int gl_fixup (int ,int,int) ;
 char* gl_killbuf ;
 int gl_pos ;
 int gl_prompt ;
 scalar_t__ isspace (char) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void
gl_killword(int direction)
{
    int pos = gl_pos;
    int startpos = gl_pos;
    int tmp;
    int i;

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
    if (pos < startpos) {
     tmp = pos;
 pos = startpos;
 startpos = tmp;
    }
    memcpy(gl_killbuf, gl_buf + startpos, (size_t) (pos - startpos));
    gl_killbuf[pos - startpos] = '\0';
    if (isspace(gl_killbuf[pos - startpos - 1]))
     gl_killbuf[pos - startpos - 1] = '\0';
    gl_fixup(gl_prompt, -1, startpos);
    for (i=0, tmp=pos - startpos; i<tmp; i++)
     gl_del(0, 0);
}
