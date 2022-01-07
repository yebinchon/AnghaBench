
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIST_SIZE ;
 int gl_beep () ;
 char** hist_buf ;
 char* hist_empty_elem ;
 int hist_last ;
 int hist_pos ;

__attribute__((used)) static char *
hist_prev(void)

{
    char *p = 0;
    int next = (hist_pos - 1 + HIST_SIZE) % HIST_SIZE;

    if (hist_buf[hist_pos] != 0 && next != hist_last) {
        hist_pos = next;
        p = hist_buf[hist_pos];
    }
    if (p == 0) {
 p = hist_empty_elem;
 gl_beep();
    }
    return p;
}
