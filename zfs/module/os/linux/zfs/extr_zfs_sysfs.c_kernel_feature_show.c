
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int name; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static ssize_t
kernel_feature_show(struct kobject *kobj, struct attribute *attr, char *buf)
{
 if (strcmp(attr->name, "supported") == 0)
  return (snprintf(buf, PAGE_SIZE, "yes\n"));
 return (0);
}
