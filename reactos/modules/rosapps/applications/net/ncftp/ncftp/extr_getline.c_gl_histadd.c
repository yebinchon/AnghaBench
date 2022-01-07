
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HIST_SIZE ;
 int free (char*) ;
 scalar_t__ gl_init_done ;
 char** hist_buf ;
 char* hist_empty_elem ;
 int hist_init () ;
 size_t hist_last ;
 size_t hist_pos ;
 char* hist_save (char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

void
gl_histadd(char *buf)
{
    static char *prev = 0;
    char *p = buf;
    int len;


    if (gl_init_done < 0) {
        hist_init();
        gl_init_done = 0;
    }
    while (*p == ' ' || *p == '\t' || *p == '\n')
 p++;
    if (*p) {
 len = (int) strlen(buf);
 if (strchr(p, '\n'))
     len--;
 if ((prev == 0) || ((int) strlen(prev) != len) ||
       strncmp(prev, buf, (size_t) len) != 0) {
            hist_buf[hist_last] = hist_save(buf);
     prev = hist_buf[hist_last];
            hist_last = (hist_last + 1) % HIST_SIZE;
            if (hist_buf[hist_last] && *hist_buf[hist_last]) {
         free(hist_buf[hist_last]);
            }
     hist_buf[hist_last] = hist_empty_elem;
 }
    }
    hist_pos = hist_last;
}
