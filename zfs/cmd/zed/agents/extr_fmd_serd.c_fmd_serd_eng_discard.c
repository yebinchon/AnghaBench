
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sg_count; int sg_name; int sg_list; } ;
typedef TYPE_1__ fmd_serd_eng_t ;
typedef int fmd_serd_elem_t ;


 int free (int *) ;
 int list_remove (int *,int *) ;
 int serd_log_msg (char*,int ,int) ;

__attribute__((used)) static void
fmd_serd_eng_discard(fmd_serd_eng_t *sgp, fmd_serd_elem_t *sep)
{
 list_remove(&sgp->sg_list, sep);
 sgp->sg_count--;

 serd_log_msg("  SERD Engine: discarding %s, %d remaining",
     sgp->sg_name, (int)sgp->sg_count);

 free(sep);
}
