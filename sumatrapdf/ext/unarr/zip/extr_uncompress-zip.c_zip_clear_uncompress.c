
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_archive_zip_uncomp {int initialized; int (* clear_state ) (struct ar_archive_zip_uncomp*) ;} ;


 int stub1 (struct ar_archive_zip_uncomp*) ;

void zip_clear_uncompress(struct ar_archive_zip_uncomp *uncomp)
{
    if (!uncomp->initialized)
        return;
    uncomp->clear_state(uncomp);
    uncomp->initialized = 0;
}
