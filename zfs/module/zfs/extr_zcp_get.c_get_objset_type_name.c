
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_type_t ;
typedef int dsl_dataset_t ;


 int EINVAL ;



 int get_objset_type (int *,int*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
get_objset_type_name(dsl_dataset_t *ds, char *str)
{
 int error;
 zfs_type_t type;
 error = get_objset_type(ds, &type);
 if (error != 0)
  return (error);
 switch (type) {
 case 129:
  (void) strcpy(str, "snapshot");
  break;
 case 130:
  (void) strcpy(str, "filesystem");
  break;
 case 128:
  (void) strcpy(str, "volume");
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
