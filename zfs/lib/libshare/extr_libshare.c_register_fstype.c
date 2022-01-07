
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sa_share_ops_t ;
struct TYPE_5__ {char const* name; struct TYPE_5__* next; int fsinfo_index; int const* ops; } ;
typedef TYPE_1__ sa_fstype_t ;


 TYPE_1__* calloc (int,int) ;
 TYPE_1__* fstypes ;
 int fstypes_count ;

sa_fstype_t *
register_fstype(const char *name, const sa_share_ops_t *ops)
{
 sa_fstype_t *fstype;

 fstype = calloc(1, sizeof (sa_fstype_t));

 if (fstype == ((void*)0))
  return (((void*)0));

 fstype->name = name;
 fstype->ops = ops;
 fstype->fsinfo_index = fstypes_count;

 fstypes_count++;

 fstype->next = fstypes;
 fstypes = fstype;

 return (fstype);
}
