
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABLE_SIZE (int ) ;
 int get_choice (int ,int) ;
 int * getenv (char*) ;
 int set_directories_text (int) ;
 int vimfiles_dir_choice ;
 int vimfiles_dir_choices ;

__attribute__((used)) static void
change_directories_choice(int idx)
{
    int choice_count = TABLE_SIZE(vimfiles_dir_choices);


    if (getenv("HOME") == ((void*)0))
 --choice_count;
    vimfiles_dir_choice = get_choice(vimfiles_dir_choices, choice_count);
    set_directories_text(idx);
}
