
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACS_HLINE ;
 int ACS_LLCORNER ;
 int ACS_LRCORNER ;
 int ACS_ULCORNER ;
 int ACS_URCORNER ;
 int ACS_VLINE ;
 int COLS ;
 int C_BOX ;
 int C_DEFAULT ;
 int color_set (int ,int *) ;
 int mvaddch (int,int,int ) ;
 int mvhline (int,int,int ,int) ;
 int mvprintw (int,int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void DrawBox(int y, int h, bool color, const char *title)
{
    int w = COLS;
    if (w <= 3 || h <= 0)
        return;

    if (color) color_set(C_BOX, ((void*)0));

    if (!title) title = "";
    int len = strlen(title);

    if (len > w - 2)
        len = w - 2;

    mvaddch(y, 0, ACS_ULCORNER);
    mvhline(y, 1, ACS_HLINE, (w-len-2)/2);
    mvprintw(y, 1+(w-len-2)/2, "%s", title);
    mvhline(y, (w-len)/2+len, ACS_HLINE, w - 1 - ((w-len)/2+len));
    mvaddch(y, w-1,ACS_URCORNER);

    for (int i = 0; i < h; i++) {
        mvaddch(++y, 0, ACS_VLINE);
        mvaddch(y, w-1, ACS_VLINE);
    }

    mvaddch(++y, 0, ACS_LLCORNER);
    mvhline(y, 1, ACS_HLINE, w - 2);
    mvaddch(y, w-1, ACS_LRCORNER);
    if (color) color_set(C_DEFAULT, ((void*)0));
}
