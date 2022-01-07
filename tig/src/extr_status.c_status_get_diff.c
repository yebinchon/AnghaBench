
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* name; void* mode; int rev; } ;
struct TYPE_3__ {scalar_t__* name; void* mode; int rev; } ;
struct status {char status; TYPE_2__ new; TYPE_1__ old; } ;


 int string_copy_rev (int ,char const*) ;
 void* strtoul (char const*,int *,int) ;

__attribute__((used)) static inline bool
status_get_diff(struct status *file, const char *buf, size_t bufsize)
{
 const char *old_mode = buf + 1;
 const char *new_mode = buf + 8;
 const char *old_rev = buf + 15;
 const char *new_rev = buf + 56;
 const char *status = buf + 97;

 if (bufsize < 98 ||
     old_mode[-1] != ':' ||
     new_mode[-1] != ' ' ||
     old_rev[-1] != ' ' ||
     new_rev[-1] != ' ' ||
     status[-1] != ' ')
  return 0;

 file->status = *status;

 string_copy_rev(file->old.rev, old_rev);
 string_copy_rev(file->new.rev, new_rev);

 file->old.mode = strtoul(old_mode, ((void*)0), 8);
 file->new.mode = strtoul(new_mode, ((void*)0), 8);

 file->old.name[0] = file->new.name[0] = 0;

 return 1;
}
