
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int subdir ;
typedef int portstr ;
struct TYPE_3__ {char* user; char* pass; char* host; int port; } ;
typedef int LineListPtr ;
typedef TYPE_1__* FTPCIPtr ;


 int AddLine (int ,char*) ;
 int InitLineList (int ) ;
 int URLCopyToken (char* const,size_t const,char*,size_t) ;
 int atoi (char*) ;
 int kMalformedURL ;
 int kNoErr ;
 int kTypeAscii ;
 int kTypeBinary ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char* const) ;
 scalar_t__ strncasecmp (char* const,char*,int) ;
 scalar_t__ strncmp (char* const,char*,int) ;
 char* strrchr (char*,char) ;
 char* strtok (char*,char*) ;

int
FTPDecodeURL(
 const FTPCIPtr cip,
 char *const url,
 LineListPtr cdlist,
 char *const fn,
 const size_t fnsize,
 int *const xtype,
 int *const wantnlst
)
{
 char *cp;
 char *hstart, *hend;
 char *h2start;
 char *at1;
 char portstr[32];
 int port;
 int sc;
 char *lastslash;
 char *parsestr;
 char *tok;
 char subdir[128];
 char *semi;

 InitLineList(cdlist);
 *fn = '\0';
 if (wantnlst != ((void*)0))
  *wantnlst = 0;
 if (xtype != ((void*)0))
  *xtype = kTypeBinary;

 cp = ((void*)0);
 if (strncmp(url, "<URL:ftp://", 11) == 0) {
  cp = url + strlen(url) - 1;
  if (*cp != '>')
   return (kMalformedURL);
  *cp = '\0';
  cp = url + 11;
 } else if (strncmp(url, "ftp://", 6) == 0) {
  cp = url + 6;
 } else {
  return (-1);
 }




 at1 = ((void*)0);
 for (hstart = cp; ; cp++) {
  if (*cp == '@') {
   if (at1 == ((void*)0))
    at1 = cp;
   else
    return (kMalformedURL);
  } else if ((*cp == '\0') || (*cp == '/')) {
   hend = cp;
   break;
  }
 }

 sc = *hend;
 *hend = '\0';
 if (at1 == ((void*)0)) {

  h2start = hstart;
 } else {
  *at1 = '\0';
  cp = strchr(hstart, ':');
  if (cp == ((void*)0)) {

   URLCopyToken(cip->user, sizeof(cip->user), hstart, (size_t) (at1 - hstart));
  } else if (strchr(cp + 1, ':') != ((void*)0)) {

   return (kMalformedURL);
  } else {
   URLCopyToken(cip->user, sizeof(cip->user), hstart, (size_t) (cp - hstart));
   URLCopyToken(cip->pass, sizeof(cip->pass), cp + 1, (size_t) (at1 - (cp + 1)));
  }
  *at1 = '@';
  h2start = at1 + 1;
 }

 cp = strchr(h2start, ':');
 if (cp == ((void*)0)) {

  URLCopyToken(cip->host, sizeof(cip->host), h2start, (size_t) (hend - h2start));
 } else if (strchr(cp + 1, ':') != ((void*)0)) {

  return (kMalformedURL);
 } else {
  URLCopyToken(cip->host, sizeof(cip->host), h2start, (size_t) (cp - h2start));
  URLCopyToken(portstr, sizeof(portstr), cp + 1, (size_t) (hend - (cp + 1)));
  port = atoi(portstr);
  if (port > 0)
   cip->port = port;
 }

 *hend = (char) sc;
 if ((*hend == '\0') || ((*hend == '/') && (hend[1] == '\0'))) {

  return (0);
 }

 lastslash = strrchr(hend, '/');
 if (lastslash == ((void*)0)) {

  return (0);
 }
 *lastslash = '\0';

 if ((semi = strchr(lastslash + 1, ';')) != ((void*)0)) {
  *semi++ = '\0';
  if (strcmp(semi, "type=i") == 0) {
   if (xtype != ((void*)0))
    *xtype = kTypeBinary;
  } else if (strcmp(semi, "type=a") == 0) {
   if (xtype != ((void*)0))
    *xtype = kTypeAscii;
  } else if (strcmp(semi, "type=b") == 0) {
   if (xtype != ((void*)0))
    *xtype = kTypeBinary;
  } else if (strcmp(semi, "type=d") == 0) {
   if (wantnlst != ((void*)0)) {
    *wantnlst = 1;
    if (xtype != ((void*)0))
     *xtype = kTypeAscii;
   } else {

    return (kMalformedURL);
   }
  }

 }
 URLCopyToken(fn, fnsize, lastslash + 1, strlen(lastslash + 1));
 for (parsestr = hend; (tok = strtok(parsestr, "/")) != ((void*)0); parsestr = ((void*)0)) {
  URLCopyToken(subdir, sizeof(subdir), tok, strlen(tok));
  (void) AddLine(cdlist, subdir);
 }
 *lastslash = '/';
 return (kNoErr);
}
