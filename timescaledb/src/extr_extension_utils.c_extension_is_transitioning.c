
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CurrentExtensionObject ;
 int EXTENSION_NAME ;
 scalar_t__ creating_extension ;
 scalar_t__ get_extension_oid (int ,int) ;

__attribute__((used)) static bool inline extension_is_transitioning()
{




 if (creating_extension)
 {
  return get_extension_oid(EXTENSION_NAME, 1) == CurrentExtensionObject;
 }
 return 0;
}
