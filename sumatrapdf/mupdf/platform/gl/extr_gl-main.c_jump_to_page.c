
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_future () ;
 int ctx ;
 int currentpage ;
 int doc ;
 int fz_clamp_location (int ,int ,int ) ;
 int fz_location_from_page_number (int ,int ,int) ;
 int push_history () ;

__attribute__((used)) static void jump_to_page(int newpage)
{
 clear_future();
 push_history();
 currentpage = fz_location_from_page_number(ctx, doc, newpage);
 currentpage = fz_clamp_location(ctx, doc, currentpage);
 push_history();
}
