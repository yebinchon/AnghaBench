
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_location ;


 int clear_future () ;
 int ctx ;
 int currentpage ;
 int doc ;
 int fz_clamp_location (int ,int ,int ) ;
 int push_history () ;

__attribute__((used)) static void jump_to_location(fz_location loc)
{
 clear_future();
 push_history();
 currentpage = fz_clamp_location(ctx, doc, loc);
 push_history();
}
