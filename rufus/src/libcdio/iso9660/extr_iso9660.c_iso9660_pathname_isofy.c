
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int tmpbuf ;


 int cdio_assert (int) ;
 int snprintf (char*,int,char*,char const*,int) ;
 char* strdup (char*) ;
 int strlen (char const*) ;

char *
iso9660_pathname_isofy (const char pathname[], uint16_t version)
{
  char tmpbuf[1024] = { 0, };

  cdio_assert (strlen (pathname) < (sizeof (tmpbuf) - sizeof (";65535")));

  snprintf (tmpbuf, sizeof(tmpbuf), "%s;%d", pathname, version);

  return strdup (tmpbuf);
}
