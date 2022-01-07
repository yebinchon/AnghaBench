
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct status {int status; TYPE_1__ new; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;






 int string_nformat (char*,size_t,int *,char const*,char const*) ;

bool
status_stage_info_(char *buf, size_t bufsize,
     enum line_type type, struct status *status)
{
 const char *file = status ? status->new.name : "";
 const char *info;

 switch (type) {
 case 130:
  if (status && status->status)
   info = "Staged changes to %s";
  else
   info = "Staged changes";
  break;

 case 129:
  if (status && status->status)
   info = "Unstaged changes to %s";
  else
   info = "Unstaged changes";
  break;

 case 128:
  info = "Untracked file %s";
  break;

 case 131:
 default:
  info = "";
 }

 return string_nformat(buf, bufsize, ((void*)0), info, file);
}
