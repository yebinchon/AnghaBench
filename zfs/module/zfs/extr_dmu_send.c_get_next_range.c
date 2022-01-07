
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_range {int dummy; } ;
typedef int bqueue_t ;


 struct send_range* get_next_range_nofree (int *,struct send_range*) ;
 int range_free (struct send_range*) ;

__attribute__((used)) static struct send_range *
get_next_range(bqueue_t *bq, struct send_range *prev)
{
 struct send_range *next = get_next_range_nofree(bq, prev);
 range_free(prev);
 return (next);
}
