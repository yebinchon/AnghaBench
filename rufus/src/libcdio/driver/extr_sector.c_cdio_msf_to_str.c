
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m; int s; int f; } ;
typedef TYPE_1__ msf_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int,int,int) ;
 char* strdup (char*) ;

char *
cdio_msf_to_str (const msf_t *msf)
{
  char buf[16];

  snprintf (buf, sizeof (buf), "%2.2x:%2.2x:%2.2x", msf->m, msf->s, msf->f);
  return strdup (buf);
}
