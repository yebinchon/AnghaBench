
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ NUL ;

 int compat_choice ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*) ;
 int mouse_choice ;


 scalar_t__* oldvimrc ;
 int printf (char*,char*) ;
 int remap_choice ;


 char* vimrc ;

__attribute__((used)) static void
install_vimrc(int idx)
{
    FILE *fd, *tfd;
    char *fname;



    if (*oldvimrc != NUL)
 fname = oldvimrc;
    else
 fname = vimrc;

    fd = fopen(fname, "w");
    if (fd == ((void*)0))
    {
 printf("\nERROR: Cannot open \"%s\" for writing.\n", fname);
 return;
    }
    switch (compat_choice)
    {
 case 132:
      fprintf(fd, "set compatible\n");
      break;
 case 133:
      fprintf(fd, "set nocompatible\n");
      break;
 case 134:
      fprintf(fd, "set nocompatible\n");
      fprintf(fd, "source $VIMRUNTIME/vimrc_example.vim\n");
      break;
    }
    switch (remap_choice)
    {
 case 129:
      break;
 case 128:
      fprintf(fd, "source $VIMRUNTIME/mswin.vim\n");
      break;
    }
    switch (mouse_choice)
    {
 case 130:
      fprintf(fd, "behave xterm\n");
      break;
 case 131:
      fprintf(fd, "behave mswin\n");
      break;
    }
    if ((tfd = fopen("diff.exe", "r")) != ((void*)0))
    {

 fclose(tfd);
 fprintf(fd, "\n");
 fprintf(fd, "set diffexpr=MyDiff()\n");
 fprintf(fd, "function MyDiff()\n");
 fprintf(fd, "  let opt = '-a --binary '\n");
 fprintf(fd, "  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif\n");
 fprintf(fd, "  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif\n");

 fprintf(fd, "  let arg1 = v:fname_in\n");
 fprintf(fd, "  if arg1 =~ ' ' | let arg1 = '\"' . arg1 . '\"' | endif\n");
 fprintf(fd, "  let arg2 = v:fname_new\n");
 fprintf(fd, "  if arg2 =~ ' ' | let arg2 = '\"' . arg2 . '\"' | endif\n");
 fprintf(fd, "  let arg3 = v:fname_out\n");
 fprintf(fd, "  if arg3 =~ ' ' | let arg3 = '\"' . arg3 . '\"' | endif\n");
 fprintf(fd, "  if $VIMRUNTIME =~ ' '\n");
 fprintf(fd, "    if &sh =~ '\\<cmd'\n");
 fprintf(fd, "      if empty(&shellxquote)\n");
 fprintf(fd, "        let l:shxq_sav = ''\n");
 fprintf(fd, "        set shellxquote&\n");
 fprintf(fd, "      endif\n");
 fprintf(fd, "      let cmd = '\"' . $VIMRUNTIME . '\\diff\"'\n");
 fprintf(fd, "    else\n");
 fprintf(fd, "      let cmd = substitute($VIMRUNTIME, ' ', '\" ', '') . '\\diff\"'\n");
 fprintf(fd, "    endif\n");
 fprintf(fd, "  else\n");
 fprintf(fd, "    let cmd = $VIMRUNTIME . '\\diff'\n");
 fprintf(fd, "  endif\n");
 fprintf(fd, "  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3\n");
 fprintf(fd, "  if exists('l:shxq_sav')\n");
 fprintf(fd, "    let &shellxquote=l:shxq_sav\n");
 fprintf(fd, "  endif\n");
 fprintf(fd, "endfunction\n");
 fprintf(fd, "\n");
    }
    fclose(fd);
    printf("%s has been written\n", fname);
}
