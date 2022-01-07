
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inflate; } ;
struct ar_archive_zip_uncomp {TYPE_1__ state; } ;


 int inflate_free (int ) ;

__attribute__((used)) static void zip_clear_uncompress_deflate64(struct ar_archive_zip_uncomp *uncomp)
{
    inflate_free(uncomp->state.inflate);
}
