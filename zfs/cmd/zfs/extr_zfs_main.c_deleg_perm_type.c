
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_note_t ;
 char const* gettext (char*) ;

__attribute__((used)) static inline const char *
deleg_perm_type(zfs_deleg_note_t note)
{

 switch (note) {


 case 138:
 case 137:
 case 130:
 case 129:
 case 128:
 case 132:
 case 131:
 case 140:
 case 139:
 case 133:
 case 134:
 case 135:
 case 136:

  return (gettext("other"));
 default:
  return (gettext("subcommand"));
 }
}
