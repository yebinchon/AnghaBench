
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int Columns ;
 scalar_t__ STRLEN (int *) ;
 int ** features ;
 int got_int ;
 int msg_col ;
 int msg_putchar (char) ;
 int msg_puts (int *) ;
 int version_msg (int *) ;

__attribute__((used)) static void
list_features()
{
    int i;
    int ncol;
    int nrow;
    int nfeat = 0;
    int width = 0;



    for (i = 0; features[i] != ((void*)0); ++i)
    {
 int l = (int)STRLEN(features[i]);

 if (l > width)
     width = l;
 ++nfeat;
    }
    width += 1;

    if (Columns < width)
    {

 for (i = 0; features[i] != ((void*)0); ++i)
 {
     version_msg(features[i]);
     if (msg_col > 0)
  msg_putchar('\n');
 }
 return;
    }



    ncol = (int) (Columns + 1) / width;
    nrow = nfeat / ncol + (nfeat % ncol ? 1 : 0);


    for (i = 0; !got_int && i < nrow * ncol; ++i)
    {
 int idx = (i / ncol) + (i % ncol) * nrow;

 if (idx < nfeat)
 {
     int last_col = (i + 1) % ncol == 0;

     msg_puts((char_u *)features[idx]);
     if (last_col)
     {
  if (msg_col > 0)
      msg_putchar('\n');
     }
     else
     {
  while (msg_col % width)
      msg_putchar(' ');
     }
 }
 else
 {
     if (msg_col > 0)
  msg_putchar('\n');
 }
    }
}
