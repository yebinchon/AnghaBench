
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linenoiseState {int history_index; char* buf; int buflen; int pos; int len; } ;


 int LINENOISE_HISTORY_PREV ;
 int free (int ) ;
 int * history ;
 int history_len ;
 int refreshLine (struct linenoiseState*) ;
 int strdup (char*) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int) ;

void linenoiseEditHistoryNext(struct linenoiseState *l, int dir) {
    if (history_len > 1) {


        free(history[history_len - 1 - l->history_index]);
        history[history_len - 1 - l->history_index] = strdup(l->buf);

        l->history_index += (dir == LINENOISE_HISTORY_PREV) ? 1 : -1;
        if (l->history_index < 0) {
            l->history_index = 0;
            return;
        } else if (l->history_index >= history_len) {
            l->history_index = history_len-1;
            return;
        }
        strncpy(l->buf,history[history_len - 1 - l->history_index],l->buflen);
        l->buf[l->buflen-1] = '\0';
        l->len = l->pos = strlen(l->buf);
        refreshLine(l);
    }
}
