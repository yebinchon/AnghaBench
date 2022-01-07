
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * inflate; } ;
struct ar_archive_zip_uncomp {TYPE_1__ state; } ;


 int * inflate_create (int) ;

__attribute__((used)) static bool zip_init_uncompress_deflate64(struct ar_archive_zip_uncomp *uncomp, bool deflate64)
{
    uncomp->state.inflate = inflate_create(deflate64);

    return uncomp->state.inflate != ((void*)0);
}
