
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LineOffset ;
 int LineWraps ;
 int ScreenAttrs ;
 int ScreenLines ;
 int ScreenLines2 ;
 int * ScreenLinesC ;
 int ScreenLinesUC ;
 int Screen_mco ;
 int TabPageIdxs ;
 int vim_free (int ) ;

void
free_screenlines()
{
    vim_free(ScreenLines);
    vim_free(ScreenAttrs);
    vim_free(LineOffset);
    vim_free(LineWraps);



}
