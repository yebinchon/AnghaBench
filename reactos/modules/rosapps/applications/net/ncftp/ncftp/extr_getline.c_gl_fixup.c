
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BUF_SIZE ;
 int gl_beep () ;
 char* gl_buf ;
 int gl_cnt ;
 scalar_t__ gl_ellipses_during_completion ;
 int gl_extent ;
 int gl_pos ;
 int gl_putc (char) ;
 int gl_puts (char const*) ;
 int gl_scroll ;
 scalar_t__ gl_strlen (char const*) ;
 int gl_termw ;
 int gl_width ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
gl_fixup(const char *prompt, int change, int cursor)
{
    static int gl_shift;
    static int off_right;
    static int off_left;
    static char last_prompt[80] = "";
    int left = 0, right = -1;
    int pad;
    int backup;
    int new_shift;
    int extra;
    int i;
    int new_right = -1;
    int l1, l2;

    if (change == -2) {
 gl_pos = gl_cnt = gl_shift = off_right = off_left = 0;
 gl_putc('\r');
 gl_puts(prompt);
 strcpy(last_prompt, prompt);
 change = 0;
        gl_width = gl_termw - (int) gl_strlen(prompt);
    } else if (strcmp(prompt, last_prompt) != 0) {
 l1 = (int) gl_strlen(last_prompt);
 l2 = (int) gl_strlen(prompt);
 gl_cnt = gl_cnt + l1 - l2;
 strcpy(last_prompt, prompt);
 gl_putc('\r');
 gl_puts(prompt);
 gl_pos = gl_shift;
        gl_width = gl_termw - l2;
 change = 0;
    }
    pad = (off_right)? gl_width - 1 : gl_cnt - gl_shift;
    backup = gl_pos - gl_shift;
    if (change >= 0) {
        gl_cnt = (int) strlen(gl_buf);
        if (change > gl_cnt)
     change = gl_cnt;
    }
    if (cursor > gl_cnt) {
 if (cursor != GL_BUF_SIZE) {
     if (gl_ellipses_during_completion == 0) {
         gl_beep();
     }
 }
 cursor = gl_cnt;
    }
    if (cursor < 0) {
 gl_beep();
 cursor = 0;
    }
    if (off_right || (off_left && cursor < gl_shift + gl_width - gl_scroll / 2))
 extra = 2;
    else
 extra = 0;
    new_shift = cursor + extra + gl_scroll - gl_width;
    if (new_shift > 0) {
 new_shift /= gl_scroll;
 new_shift *= gl_scroll;
    } else
 new_shift = 0;
    if (new_shift != gl_shift) {
 gl_shift = new_shift;
 off_left = (gl_shift)? 1 : 0;
 off_right = (gl_cnt > gl_shift + gl_width - 1)? 1 : 0;
        left = gl_shift;
 new_right = right = (off_right)? gl_shift + gl_width - 2 : gl_cnt;
    } else if (change >= 0) {
 if (change < gl_shift + off_left) {
     left = gl_shift;
 } else {
     left = change;
     backup = gl_pos - change;
 }
 off_right = (gl_cnt > gl_shift + gl_width - 1)? 1 : 0;
 right = (off_right)? gl_shift + gl_width - 2 : gl_cnt;
 new_right = (gl_extent && (right > left + gl_extent))?
              left + gl_extent : right;
    }
    pad -= (off_right)? gl_width - 1 : gl_cnt - gl_shift;
    pad = (pad < 0)? 0 : pad;
    if (left <= right) {
 for (i=0; i < backup; i++)
     gl_putc('\b');
 if (left == gl_shift && off_left) {
     gl_putc('$');
     left++;
        }
 for (i=left; i < new_right; i++)
     gl_putc(gl_buf[i]);
 gl_pos = new_right;
 if (off_right && new_right == right) {
     gl_putc('$');
     gl_pos++;
 } else {
     for (i=0; i < pad; i++)
  gl_putc(' ');
     gl_pos += pad;
 }
    }
    i = gl_pos - cursor;
    if (i > 0) {
 while (i--)
    gl_putc('\b');
    } else {
 for (i=gl_pos; i < cursor; i++)
     gl_putc(gl_buf[i]);
    }
    gl_pos = cursor;
}
