
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_REVERSE ;
 int attroff (int ) ;
 int attrset (int ) ;
 int mvhline (int,int,char,int) ;

__attribute__((used)) static void DrawLine(int y, int x, int w)
{
    if (w <= 0) return;

    attrset(A_REVERSE);
    mvhline(y, x, ' ', w);
    attroff(A_REVERSE);
}
