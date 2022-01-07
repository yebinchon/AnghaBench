
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sa_group_t ;
struct TYPE_5__ {TYPE_1__* ops; struct TYPE_5__* next; int name; } ;
typedef TYPE_2__ sa_fstype_t ;
struct TYPE_4__ {int (* validate_shareopts ) (char*) ;} ;


 int SA_INVALID_PROTOCOL ;
 TYPE_2__* fstypes ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (char*) ;

int
sa_parse_legacy_options(sa_group_t group, char *options, char *proto)
{
 sa_fstype_t *fstype;

 fstype = fstypes;
 while (fstype != ((void*)0)) {
  if (strcmp(fstype->name, proto) != 0) {
   fstype = fstype->next;
   continue;
  }

  return (fstype->ops->validate_shareopts(options));
 }

 return (SA_INVALID_PROTOCOL);
}
