
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABLE_SIZE (int *) ;
 int alloc_text (int,int ,int ) ;
 size_t compat_choice ;
 int * compat_choices ;
 int compat_text ;
 size_t get_choice (int *,int ) ;

__attribute__((used)) static void
change_run_choice(int idx)
{
    compat_choice = get_choice(compat_choices, TABLE_SIZE(compat_choices));
    alloc_text(idx, compat_text, compat_choices[compat_choice]);
}
