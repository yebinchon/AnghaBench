
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; int ws_row; } ;


 int STRM_NG ;
 int STRM_OK ;
 int TIOCGWINSZ ;
 int ioctl (int,int ,struct winsize*) ;

__attribute__((used)) static int
get_winsize(int* row, int* col)
{
  struct winsize w;
  int n;

  n = ioctl(1, TIOCGWINSZ, &w);
  if (n < 0 || w.ws_col == 0) {
    return STRM_NG;
  }
  *row = w.ws_row;
  *col = w.ws_col;
  return STRM_OK;
}
