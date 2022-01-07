
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LineListPtr ;
typedef int FTPCIPtr ;


 int FTPDecodeURL (int const,char*,int ,char*,size_t,int *,int *) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,char*) ;
 int * strchr (char*,char) ;
 char* strrchr (char*,char) ;

int
DecodeDirectoryURL(
 const FTPCIPtr cip,
 char *url,
 LineListPtr cdlist,
 char *fn,
 size_t fnsize
)
{
 int rc;
 char urlstr2[256];
 char *cp;
 cp = strrchr(url, '/');
 if ((cp != ((void*)0)) && (cp[1] != '\0') && (strchr(cp, '.') == ((void*)0))) {

  (void) STRNCPY(urlstr2, url);
  (void) STRNCAT(urlstr2, "/");
  url = urlstr2;
 }
 rc = FTPDecodeURL(cip, url, cdlist, fn, fnsize, ((void*)0), ((void*)0));
 return (rc);
}
