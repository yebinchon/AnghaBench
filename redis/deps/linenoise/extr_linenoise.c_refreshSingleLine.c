
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linenoiseState {char* prompt; int ofd; char* buf; size_t len; size_t pos; size_t cols; } ;
struct abuf {int len; int b; } ;


 int abAppend (struct abuf*,char*,size_t) ;
 int abFree (struct abuf*) ;
 int abInit (struct abuf*) ;
 int refreshShowHints (struct abuf*,struct linenoiseState*,size_t) ;
 int snprintf (char*,int,char*,...) ;
 size_t strlen (char*) ;
 int write (int,int ,int ) ;

__attribute__((used)) static void refreshSingleLine(struct linenoiseState *l) {
    char seq[64];
    size_t plen = strlen(l->prompt);
    int fd = l->ofd;
    char *buf = l->buf;
    size_t len = l->len;
    size_t pos = l->pos;
    struct abuf ab;

    while((plen+pos) >= l->cols) {
        buf++;
        len--;
        pos--;
    }
    while (plen+len > l->cols) {
        len--;
    }

    abInit(&ab);

    snprintf(seq,64,"\r");
    abAppend(&ab,seq,strlen(seq));

    abAppend(&ab,l->prompt,strlen(l->prompt));
    abAppend(&ab,buf,len);

    refreshShowHints(&ab,l,plen);

    snprintf(seq,64,"\x1b[0K");
    abAppend(&ab,seq,strlen(seq));

    snprintf(seq,64,"\r\x1b[%dC", (int)(pos+plen));
    abAppend(&ab,seq,strlen(seq));
    if (write(fd,ab.b,ab.len) == -1) {}
    abFree(&ab);
}
