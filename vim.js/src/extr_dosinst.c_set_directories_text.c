
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_text (int,char*,char*) ;
 int vimfiles_dir_choice ;
 char** vimfiles_dir_choices ;
 scalar_t__ vimfiles_dir_none ;

__attribute__((used)) static void
set_directories_text(int idx)
{
    if (vimfiles_dir_choice == (int)vimfiles_dir_none)
 alloc_text(idx, "Do NOT create plugin directories%s", "");
    else
 alloc_text(idx, "Create plugin directories: %s",
       vimfiles_dir_choices[vimfiles_dir_choice]);
}
