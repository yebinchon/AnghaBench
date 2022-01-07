
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_label { ____Placeholder_status_label } status_label ;


 int ARRAY_SIZE (char const***) ;
 int STATUS_LABEL_LONG ;
 int STATUS_LABEL_NO ;

const char *
mkstatus(const char status, enum status_label label)
{
 static char default_label[] = { '?', 0 };
 static const char *labels[][2] = {
  { "!", "ignored" },
  { "?", "untracked" },
  { "A", "added" },
  { "C", "copied" },
  { "D", "deleted" },
  { "M", "modified" },
  { "R", "renamed" },
  { "U", "unmerged" },
 };
 int i;

 if (label == STATUS_LABEL_NO)
  return "";

 for (i = 0; i < ARRAY_SIZE(labels); i++) {
  if (status == *labels[i][0]) {
   if (label == STATUS_LABEL_LONG)
    return labels[i][1];
   else
    return labels[i][0];
  }
 }

 default_label[0] = status;
 return default_label;
}
