
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_request {char const** argv; } ;
struct request_info {int name; } ;
struct keymap {int name; } ;
typedef enum request { ____Placeholder_request } request ;
typedef int FILE ;


 char const* enum_name (int ) ;
 char* format_run_request_flags (struct run_request const*) ;
 int io_fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static bool
save_option_keybinding(void *data, const char *group, struct keymap *keymap,
         enum request request, const char *key,
         const struct request_info *req_info,
         const struct run_request *run_req)
{
 FILE *file = data;

 if (group && !io_fprintf(file, "\n# %s", group))
  return 0;

 if (!io_fprintf(file, "\nbind %-10s %-15s ", enum_name(keymap->name), key))
  return 0;

 if (req_info) {
  return io_fprintf(file, "%s", enum_name(req_info->name));

 } else {
  const char *sep = format_run_request_flags(run_req);
  int i;

  for (i = 0; run_req->argv[i]; i++) {
   if (!io_fprintf(file, "%s%s", sep, run_req->argv[i]))
    return 0;
   sep = " ";
  }

  return 1;
 }
}
