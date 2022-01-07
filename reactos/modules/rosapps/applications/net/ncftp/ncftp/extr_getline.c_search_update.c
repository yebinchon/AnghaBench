
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_beep () ;
 int hist_last ;
 int hist_pos ;
 size_t search_pos ;
 char* search_prompt ;
 char* search_string ;

__attribute__((used)) static void
search_update(int c)
{
    if (c == 0) {
 search_pos = 0;
        search_string[0] = 0;
        search_prompt[0] = '?';
        search_prompt[1] = ' ';
        search_prompt[2] = 0;
    } else if (c > 0) {
        search_string[search_pos] = (char) c;
        search_string[search_pos+1] = (char) 0;
        search_prompt[search_pos] = (char) c;
        search_prompt[search_pos+1] = (char) '?';
        search_prompt[search_pos+2] = (char) ' ';
        search_prompt[search_pos+3] = (char) 0;
 search_pos++;
    } else {
 if (search_pos > 0) {
     search_pos--;
            search_string[search_pos] = (char) 0;
            search_prompt[search_pos] = (char) '?';
            search_prompt[search_pos+1] = (char) ' ';
            search_prompt[search_pos+2] = (char) 0;
 } else {
     gl_beep();
     hist_pos = hist_last;
 }
    }
}
