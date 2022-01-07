
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_col; } ;


 int TIOCGWINSZ ;
 int getCursorPosition (int,int) ;
 int ioctl (int,int ,struct winsize*) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static int getColumns(int ifd, int ofd) {
    struct winsize ws;

    if (ioctl(1, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {

        int start, cols;


        start = getCursorPosition(ifd,ofd);
        if (start == -1) goto failed;


        if (write(ofd,"\x1b[999C",6) != 6) goto failed;
        cols = getCursorPosition(ifd,ofd);
        if (cols == -1) goto failed;


        if (cols > start) {
            char seq[32];
            snprintf(seq,32,"\x1b[%dD",cols-start);
            if (write(ofd,seq,strlen(seq)) == -1) {

            }
        }
        return cols;
    } else {
        return ws.ws_col;
    }

failed:
    return 80;
}
