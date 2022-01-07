
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_beep () ;
 scalar_t__* gl_buf ;
 int gl_fixup (int ,int ,int) ;
 int gl_search_mode ;
 int hist_last ;
 int hist_pos ;
 char* hist_prev () ;
 scalar_t__ search_forw_flg ;
 int search_last ;
 scalar_t__ search_pos ;
 int search_prompt ;
 int search_string ;
 int search_update (int ) ;
 int strcpy (scalar_t__*,char*) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static void
search_back(int new_search)
{
    int found = 0;
    char *p, *loc;

    search_forw_flg = 0;
    if (gl_search_mode == 0) {
 search_last = hist_pos = hist_last;
 search_update(0);
 gl_search_mode = 1;
        gl_buf[0] = 0;
 gl_fixup(search_prompt, 0, 0);
    } else if (search_pos > 0) {
 while (!found) {
     p = hist_prev();
     if (*p == 0) {
        gl_buf[0] = 0;
        gl_fixup(search_prompt, 0, 0);
        found = 1;
     } else if ((loc = strstr(p, search_string)) != 0) {
        strcpy(gl_buf, p);
        gl_fixup(search_prompt, 0, (int) (loc - p));
        if (new_search)
     search_last = hist_pos;
        found = 1;
     }
 }

    } else {
        gl_beep();
    }
}
