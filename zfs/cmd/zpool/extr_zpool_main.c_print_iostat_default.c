
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vs_space; scalar_t__ vs_alloc; double* vs_ops; double* vs_bytes; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int cb_scripted; scalar_t__ cb_literal; } ;
typedef TYPE_2__ iostat_cbdata_t ;
typedef enum zfs_nicenum_format { ____Placeholder_zfs_nicenum_format } zfs_nicenum_format ;


 int IOS_DEFAULT ;
 int ZFS_NICENUM_1024 ;
 int ZFS_NICENUM_RAW ;
 size_t ZIO_TYPE_READ ;
 size_t ZIO_TYPE_WRITE ;
 unsigned int default_column_width (TYPE_2__*,int ) ;
 int print_one_stat (scalar_t__,int,unsigned int,int ) ;
 int printf (char*,unsigned int,char,...) ;

__attribute__((used)) static void
print_iostat_default(vdev_stat_t *vs, iostat_cbdata_t *cb, double scale)
{
 unsigned int column_width = default_column_width(cb, IOS_DEFAULT);
 enum zfs_nicenum_format format;
 char na;

 if (cb->cb_literal) {
  format = ZFS_NICENUM_RAW;
  na = '0';
 } else {
  format = ZFS_NICENUM_1024;
  na = '-';
 }


 if (vs->vs_space == 0) {
  if (cb->cb_scripted)
   printf("\t%c\t%c", na, na);
  else
   printf("  %*c  %*c", column_width, na, column_width,
       na);
 } else {
  print_one_stat(vs->vs_alloc, format, column_width,
      cb->cb_scripted);
  print_one_stat(vs->vs_space - vs->vs_alloc, format,
      column_width, cb->cb_scripted);
 }

 print_one_stat((uint64_t)(vs->vs_ops[ZIO_TYPE_READ] * scale),
     format, column_width, cb->cb_scripted);
 print_one_stat((uint64_t)(vs->vs_ops[ZIO_TYPE_WRITE] * scale),
     format, column_width, cb->cb_scripted);
 print_one_stat((uint64_t)(vs->vs_bytes[ZIO_TYPE_READ] * scale),
     format, column_width, cb->cb_scripted);
 print_one_stat((uint64_t)(vs->vs_bytes[ZIO_TYPE_WRITE] * scale),
     format, column_width, cb->cb_scripted);
}
