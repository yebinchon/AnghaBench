
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icy_meta {int dummy; } ;


 int clear_icy (struct icy_meta*) ;
 int init_icy (struct icy_meta*) ;

void reset_icy(struct icy_meta *icy)
{
 clear_icy(icy);
 init_icy(icy);
}
