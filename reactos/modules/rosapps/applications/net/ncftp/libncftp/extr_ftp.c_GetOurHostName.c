
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostent {char** h_aliases; scalar_t__ h_name; } ;
typedef int line ;
struct TYPE_2__ {char* defdname; } ;
typedef int FILE ;


 char* DOMAINNAME ;
 char* HOSTNAME ;
 int STRNCPY (char*,char*) ;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char*,size_t) ;
 TYPE_1__ _res ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 int gethostname (char*,int) ;
 int isalpha (int) ;
 int memset (char*,int ,int) ;
 int res_init () ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

int
GetOurHostName(char *host, size_t siz)
{







 struct hostent *hp;
 int result;
 char **curAlias;
 char domain[64];
 char *cp;
 int rc;

 host[0] = '\0';
 result = gethostname(host, (int) siz);
 if ((result < 0) || (host[0] == '\0')) {
  return (-1);
 }

 if (strchr(host, '.') != ((void*)0)) {



  return (2);
 }

 hp = gethostbyname(host);
 if (hp != ((void*)0)) {

  cp = strchr((char *) hp->h_name, '.');
  if ((cp != ((void*)0)) && (cp[1] != '\0')) {

   (void) Strncpy(host, (char *) hp->h_name, siz);
   return (3);
  }


  for (curAlias = hp->h_aliases; *curAlias != ((void*)0); curAlias++) {
   cp = strchr(*curAlias, '.');
   if ((cp != ((void*)0)) && (cp[1] != '\0')) {
    (void) Strncpy(host, *curAlias, siz);
    return (4);
   }
  }
 }
 rc = -1;
 domain[0] = '\0';
 if (domain[0] == '\0') {
  FILE *fp;
  char line[256];
  char *tok;

  fp = fopen("/etc/resolv.conf", "r");
  if (fp != ((void*)0)) {
   (void) memset(line, 0, sizeof(line));
   while (fgets(line, sizeof(line) - 1, fp) != ((void*)0)) {
    if (!isalpha((int) line[0]))
     continue;
    tok = strtok(line, " \t\n\r");
    if (tok == ((void*)0))
     continue;
    if (strcmp(tok, "domain") == 0) {
     tok = strtok(((void*)0), " \t\n\r");
     if (tok == ((void*)0))
      continue;
     (void) STRNCPY(domain, tok);
     rc = 7;
     break;
    }
   }
   (void) fclose(fp);
  }
 }


 if (domain[0] != '\0') {



  cp = domain + strlen(domain) - 1;
  if (*cp == '.')
   *cp = '\0';
  if (domain[0] != '.')
   (void) Strncat(host, ".", siz);
  (void) Strncat(host, domain, siz);
 }
 if (rc < 0)
  host[0] = '\0';
 return(rc);

}
