
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint16_t ;
typedef int boolean_t ;


 int ACE_EVERYONE ;
 int ACE_IDENTIFIER_GROUP ;
 int ACE_OWNER ;


 int ACE_TYPE_FLAGS ;

 int B_FALSE ;
 int B_TRUE ;

 int MAX_ACE_TYPE ;
 int MIN_ACE_TYPE ;
 int OWNING_GROUP ;

__attribute__((used)) static boolean_t
zfs_acl_valid_ace_type(uint_t type, uint_t flags)
{
 uint16_t entry_type;

 switch (type) {
 case 129:
 case 128:
 case 130:
 case 131:
  entry_type = flags & ACE_TYPE_FLAGS;
  return (entry_type == ACE_OWNER ||
      entry_type == OWNING_GROUP ||
      entry_type == ACE_EVERYONE || entry_type == 0 ||
      entry_type == ACE_IDENTIFIER_GROUP);
 default:
  if (type >= MIN_ACE_TYPE && type <= MAX_ACE_TYPE)
   return (B_TRUE);
 }
 return (B_FALSE);
}
