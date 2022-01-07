
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* user; char* pass; char* name; int port; char* dir; } ;
typedef TYPE_1__* BookmarkPtr ;


 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char*,size_t) ;
 int sprintf (char*,char*,unsigned int) ;

void
BookmarkToURL(BookmarkPtr bmp, char *url, size_t urlsize)
{
 char pbuf[32];





 (void) Strncpy(url, "ftp://", urlsize);
 if (bmp->user[0] != '\0') {
  (void) Strncat(url, bmp->user, urlsize);
  if (bmp->pass[0] != '\0') {
   (void) Strncat(url, ":", urlsize);
   (void) Strncat(url, "PASSWORD", urlsize);
  }
  (void) Strncat(url, "@", urlsize);
 }
 (void) Strncat(url, bmp->name, urlsize);
 if (bmp->port != 21) {
  (void) sprintf(pbuf, ":%u", (unsigned int) bmp->port);
  (void) Strncat(url, pbuf, urlsize);
 }
 if (bmp->dir[0] == '/') {

  (void) Strncat(url, "/%2F", urlsize);
  (void) Strncat(url, bmp->dir + 1, urlsize);
  (void) Strncat(url, "/", urlsize);
 } else if (bmp->dir[0] != '\0') {
  (void) Strncat(url, "/", urlsize);
  (void) Strncat(url, bmp->dir, urlsize);
  (void) Strncat(url, "/", urlsize);
 }
}
