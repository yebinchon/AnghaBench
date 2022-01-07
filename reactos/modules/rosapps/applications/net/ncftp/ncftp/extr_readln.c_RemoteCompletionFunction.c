
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpath ;
struct TYPE_6__ {TYPE_1__** vec; } ;
struct TYPE_5__ {char const* relname; scalar_t__ type; } ;
typedef TYPE_1__** FileInfoVec ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_3__* FileInfoListPtr ;


 TYPE_3__* GetLsCacheFileList (char*) ;
 int PathCat (char*,int,int ,char const*) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 int gRemoteCWD ;
 char gl_completion_exact_match_extra_char ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 void* strrchr (char const*,char) ;

__attribute__((used)) static char *
RemoteCompletionFunction(const char *text, int state, int fTypeFilter)
{
 char rpath[256];
 char *cp;
 char *cp2;
 const char *textbasename;
 int fType;
 FileInfoPtr diritemp;
 FileInfoListPtr filp;
 int textdirlen;
 size_t tbnlen;
 size_t flen, mlen;
 static FileInfoVec diritemv;
 static int i;

 textbasename = strrchr(text, '/');
 if (textbasename == ((void*)0)) {
  textbasename = text;
  textdirlen = -1;
 } else {
  textdirlen = (int) (textbasename - text);
  textbasename++;
 }
 tbnlen = strlen(textbasename);

 if (state == 0) {
  if (text[0] == '\0') {

   STRNCPY(rpath, gRemoteCWD);
  } else {
   PathCat(rpath, sizeof(rpath), gRemoteCWD, text);
   if (text[strlen(text) - 1] == '/') {

    STRNCAT(rpath, "/");
   }
   cp2 = strrchr(rpath, '/');
   if (cp2 == ((void*)0)) {
    return ((void*)0);
   } else if (cp2 == rpath) {

    cp2++;
   }
   *cp2 = '\0';
  }

  filp = GetLsCacheFileList(rpath);
  if (filp == ((void*)0))
   return ((void*)0);

  diritemv = filp->vec;
  if (diritemv == ((void*)0))
   return ((void*)0);

  i = 0;
 }

 for ( ; ; ) {
  diritemp = diritemv[i];
  if (diritemp == ((void*)0))
   break;

  i++;
  fType = (int) diritemp->type;
  if ((fTypeFilter == 0) || (fType == fTypeFilter) || (fType == 'l')) {
   if (strncmp(textbasename, diritemp->relname, tbnlen) == 0) {
    flen = strlen(diritemp->relname);
    if (textdirlen < 0) {
     mlen = flen + 2;
     cp = (char *) malloc(mlen);
     if (cp == ((void*)0))
      return (((void*)0));
     (void) memcpy(cp, diritemp->relname, mlen);
    } else {
     mlen = textdirlen + 1 + flen + 2;
     cp = (char *) malloc(mlen);
     if (cp == ((void*)0))
      return (((void*)0));
     (void) memcpy(cp, text, (size_t) textdirlen);
     cp[textdirlen] = '/';
     (void) strcpy(cp + textdirlen + 1, diritemp->relname);
    }
    if (fType == 'd') {
     gl_completion_exact_match_extra_char = '/';
    } else {
     gl_completion_exact_match_extra_char = ' ';
    }
    return cp;
   }
  }
 }
 return ((void*)0);
}
