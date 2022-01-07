
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gl_buf ;
 int gl_fixup (int ,int ,int) ;
 int * hist_buf ;
 size_t hist_last ;
 size_t hist_pos ;
 int search_back (int ) ;
 int search_forw (int ) ;
 scalar_t__ search_forw_flg ;
 size_t search_last ;
 scalar_t__ search_pos ;
 int search_prompt ;
 int search_string ;
 int search_update (int) ;
 int strcpy (char*,int ) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static void
search_addchar(int c)
{
    char *loc;

    search_update(c);
    if (c < 0) {
 if (search_pos > 0) {
     hist_pos = search_last;
 } else {
     gl_buf[0] = 0;
     hist_pos = hist_last;
 }
 strcpy(gl_buf, hist_buf[hist_pos]);
    }
    if ((loc = strstr(gl_buf, search_string)) != 0) {
 gl_fixup(search_prompt, 0, (int) (loc - gl_buf));
    } else if (search_pos > 0) {
        if (search_forw_flg) {
     search_forw(0);
        } else {
     search_back(0);
        }
    } else {
 gl_fixup(search_prompt, 0, 0);
    }
}
