
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_ranges {int dummy; } ;
struct format_range {int dummy; } ;


 int TAILQ_REMOVE (struct format_ranges*,struct format_range*,int ) ;
 int entry ;
 int free (struct format_range*) ;

__attribute__((used)) static void
format_free_range(struct format_ranges *frs, struct format_range *fr)
{
 TAILQ_REMOVE(frs, fr, entry);
 free(fr);
}
