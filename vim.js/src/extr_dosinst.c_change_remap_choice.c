
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABLE_SIZE (int *) ;
 int alloc_text (int,int ,int ) ;
 size_t get_choice (int *,int ) ;
 size_t remap_choice ;
 int * remap_choices ;
 int remap_text ;

__attribute__((used)) static void
change_remap_choice(int idx)
{
    remap_choice = get_choice(remap_choices, TABLE_SIZE(remap_choices));
    alloc_text(idx, remap_text, remap_choices[remap_choice]);
}
