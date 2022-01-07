
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; int rev; int mode; } ;
struct status {TYPE_2__ new; TYPE_1__ old; } ;
struct io {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;





 int die (char*,int) ;
 int io_printf (struct io*,char*,int ,int ,...) ;

__attribute__((used)) static bool
status_update_write(struct io *io, struct status *status, enum line_type type)
{
 switch (type) {
 case 130:
  return io_printf(io, "%06o %s\t%s%c", status->old.mode,
     status->old.rev, status->old.name, 0);

 case 129:
 case 128:
  return io_printf(io, "%s%c", status->new.name, 0);

 default:
  die("line type %d not handled in switch", type);
  return 0;
 }
}
