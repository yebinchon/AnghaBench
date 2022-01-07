
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_prop_t ;
typedef int propb ;
typedef int propa ;
struct TYPE_2__ {int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int MAXPATHLEN ;
 int strcmp (char*,char*) ;
 scalar_t__ zfs_prop_get (int ,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static int
compare_props(const void *a, const void *b, zfs_prop_t prop)
{
 const prop_changenode_t *ca = a;
 const prop_changenode_t *cb = b;

 char propa[MAXPATHLEN];
 char propb[MAXPATHLEN];

 boolean_t haspropa, haspropb;

 haspropa = (zfs_prop_get(ca->cn_handle, prop, propa, sizeof (propa),
     ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 haspropb = (zfs_prop_get(cb->cn_handle, prop, propb, sizeof (propb),
     ((void*)0), ((void*)0), 0, B_FALSE) == 0);

 if (!haspropa && haspropb)
  return (-1);
 else if (haspropa && !haspropb)
  return (1);
 else if (!haspropa && !haspropb)
  return (0);
 else
  return (strcmp(propb, propa));
}
