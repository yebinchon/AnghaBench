
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_3__ {int td_flags; int * td_resume; } ;
typedef TYPE_1__ traverse_data_t ;
typedef int resume_skip_t ;
typedef int dnode_phys_t ;


 int RESUME_SKIP_ALL ;
 int RESUME_SKIP_CHILDREN ;
 int RESUME_SKIP_NONE ;
 int TRAVERSE_POST ;
 int ZB_IS_ZERO (int *) ;
 scalar_t__ bcmp (int const*,int *,int) ;
 int bzero (int *,int) ;
 scalar_t__ zbookmark_subtree_completed (int const*,int const*,int *) ;

__attribute__((used)) static resume_skip_t
resume_skip_check(traverse_data_t *td, const dnode_phys_t *dnp,
    const zbookmark_phys_t *zb)
{
 if (td->td_resume != ((void*)0) && !ZB_IS_ZERO(td->td_resume)) {




  if (zbookmark_subtree_completed(dnp, zb, td->td_resume))
   return (RESUME_SKIP_ALL);





  if (bcmp(zb, td->td_resume, sizeof (*zb)) == 0) {
   bzero(td->td_resume, sizeof (*zb));
   if (td->td_flags & TRAVERSE_POST)
    return (RESUME_SKIP_CHILDREN);
  }
 }
 return (RESUME_SKIP_NONE);
}
