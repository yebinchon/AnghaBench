
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errcode_t ;


 int com_err (int ,int ,char*,unsigned long,...) ;

void ext2fs_warn_bitmap(errcode_t errcode, unsigned long arg,
   const char *description)
{

 if (description)
  com_err(0, errcode, "#%lu for %s", arg, description);
 else
  com_err(0, errcode, "#%lu", arg);

}
