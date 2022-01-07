
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
hist_next(void)

{
    char *p = 0;

    if (hist_pos != hist_last) {
        hist_pos = (hist_pos+1) % HIST_SIZE;
 p = hist_buf[hist_pos];
    }
    if (p == 0) {
 p = hist_empty_elem;
 gl_beep();
    }
    return p;
}
