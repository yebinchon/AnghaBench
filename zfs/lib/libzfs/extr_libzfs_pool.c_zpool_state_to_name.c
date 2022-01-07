
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_state_t ;
typedef int vdev_aux_t ;


 int VDEV_AUX_BAD_LOG ;
 int VDEV_AUX_CORRUPT_DATA ;
 int VDEV_AUX_SPLIT_POOL ;







 char const* gettext (char*) ;

const char *
zpool_state_to_name(vdev_state_t state, vdev_aux_t aux)
{
 switch (state) {
 case 133:
 case 129:
  return (gettext("OFFLINE"));
 case 128:
  return (gettext("REMOVED"));
 case 134:
  if (aux == VDEV_AUX_CORRUPT_DATA || aux == VDEV_AUX_BAD_LOG)
   return (gettext("FAULTED"));
  else if (aux == VDEV_AUX_SPLIT_POOL)
   return (gettext("SPLIT"));
  else
   return (gettext("UNAVAIL"));
 case 131:
  return (gettext("FAULTED"));
 case 132:
  return (gettext("DEGRADED"));
 case 130:
  return (gettext("ONLINE"));

 default:
  break;
 }

 return (gettext("UNKNOWN"));
}
