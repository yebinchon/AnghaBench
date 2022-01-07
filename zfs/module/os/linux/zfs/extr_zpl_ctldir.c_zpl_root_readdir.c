
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; } ;
typedef TYPE_1__ zpl_dir_context_t ;
struct file {int f_pos; } ;
typedef int filldir_t ;


 TYPE_1__ ZPL_DIR_CONTEXT_INIT (void*,int ,int ) ;
 int zpl_root_iterate (struct file*,TYPE_1__*) ;

__attribute__((used)) static int
zpl_root_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 zpl_dir_context_t ctx =
     ZPL_DIR_CONTEXT_INIT(dirent, filldir, filp->f_pos);
 int error;

 error = zpl_root_iterate(filp, &ctx);
 filp->f_pos = ctx.pos;

 return (error);
}
