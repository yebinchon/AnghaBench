
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ffd ;
struct TYPE_5__ {char* cFileName; int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (int *) ;
 int * FindFirstFile (char*,TYPE_1__*) ;
 int FindNextFile (int *,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 scalar_t__ IsLocalPathDelim (char) ;
 char LOCAL_PATH_DELIM ;
 char* LOCAL_PATH_DELIM_STR ;
 char* _StrRFindLocalPathDelim (char const*) ;
 scalar_t__ _strnicmp (char const*,char const*,size_t) ;
 int free (char*) ;
 char gl_completion_exact_match_extra_char ;
 char* gl_home_dir ;
 char** gl_matchlist ;
 int gl_set_home_dir (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ realloc (char*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

char *
gl_local_filename_completion_proc(const char *start, int idx)
{
 static HANDLE searchHandle = ((void*)0);
 static int filepfxoffset;
 static size_t filepfxlen;

 WIN32_FIND_DATA ffd;
 DWORD dwErr;
 char *cp, *c2, ch;
 const char *filepfx;
 const char *dirtoopen, *name;
 char *dirtoopen1, *dirtoopen2;
 size_t len, len2;

 if (idx == 0) {
  if (searchHandle != ((void*)0)) {

   FindClose(searchHandle);
   searchHandle = ((void*)0);
  }
 }


 if (searchHandle == ((void*)0)) {
  dirtoopen1 = ((void*)0);
  dirtoopen2 = ((void*)0);
  cp = _StrRFindLocalPathDelim(start);
  if (cp == start) {
   dirtoopen = LOCAL_PATH_DELIM_STR;
   filepfxoffset = 1;
  } else if (cp == ((void*)0)) {
   dirtoopen = ".";
   filepfxoffset = 0;
  } else {
   len = strlen(start) + 1;
   dirtoopen1 = (char *) malloc(len);
   if (dirtoopen1 == ((void*)0))
    return ((void*)0);
   memcpy(dirtoopen1, start, len);
   len = (cp - start);
   dirtoopen1[len] = '\0';
   dirtoopen = dirtoopen1;
   filepfxoffset = (int) ((cp + 1) - start);
  }

  if (strcmp(dirtoopen, "~") == 0) {
   if (gl_home_dir == ((void*)0))
    gl_set_home_dir(((void*)0));
   if (gl_home_dir == ((void*)0))
    return (((void*)0));
   dirtoopen = gl_home_dir;
  }

  len = strlen(dirtoopen);
  dirtoopen2 = (char *) malloc(len + 8);
  if (dirtoopen2 == ((void*)0)) {
   if (dirtoopen1 != ((void*)0))
    free(dirtoopen1);
   return ((void*)0);
  }

  memcpy(dirtoopen2, dirtoopen, len + 1);
  if (dirtoopen2[len - 1] == LOCAL_PATH_DELIM)
   memcpy(dirtoopen2 + len, "*.*", (size_t) 4);
  else
   memcpy(dirtoopen2 + len, "\\*.*", (size_t) 5);


  memset(&ffd, 0, sizeof(ffd));
  searchHandle = FindFirstFile(dirtoopen2, &ffd);

  free(dirtoopen2);
  if (dirtoopen1 != ((void*)0))
   free(dirtoopen1);

  if (searchHandle == INVALID_HANDLE_VALUE) {
   return ((void*)0);
  }

  filepfx = start + filepfxoffset;
  filepfxlen = strlen(filepfx);
 } else {

  filepfx = start + filepfxoffset;
  goto next;
 }

 for (;;) {

  name = ffd.cFileName;
  if ((name[0] == '.') && ((name[1] == '\0') || ((name[1] == '.') && (name[2] == '\0'))))
   goto next;

  if ((filepfxlen == 0) || (_strnicmp(name, filepfx, filepfxlen) == 0)) {

   len = strlen(name);
   cp = (char *) malloc(filepfxoffset + len + 4 + 1 );
   *cp = '\0';
   if (filepfxoffset > 0)
    memcpy(cp, start, filepfxoffset);
   memcpy(cp + filepfxoffset, name, len + 1);
   if (ffd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {

    c2 = cp + filepfxoffset + len + 1;
    *c2++ = '\0';
    *c2++ = 'd';
    *c2 = '\0';
   } else {
    c2 = cp + filepfxoffset + len + 1;
    *c2++ = '\0';
    *c2++ = '-';
    *c2 = '\0';
   }
   return (cp);
  }

next:
  if (!FindNextFile(searchHandle, &ffd)) {
   dwErr = GetLastError();
   if (dwErr != ERROR_NO_MORE_FILES) {
    FindClose(searchHandle);
    searchHandle = ((void*)0);
    return ((void*)0);
   }


   FindClose(searchHandle);
   searchHandle = ((void*)0);

   if (idx == 1) {





    cp = gl_matchlist[0];
    ch = (char) cp[strlen(cp) + 2];
    if (ch == (char) 'd')
     gl_completion_exact_match_extra_char = LOCAL_PATH_DELIM;

    if ((cp[0] == '~') && ((cp[1] == '\0') || (IsLocalPathDelim(cp[1])))) {
     len = strlen(cp + 1) + 1;
     len2 = strlen(gl_home_dir);
     if (IsLocalPathDelim(gl_home_dir[len2 - 1]))
      len2--;
     cp = (char *) realloc(gl_matchlist[0], len + len2 + 4);
     if (cp == ((void*)0)) {
      cp = gl_matchlist[0];
     } else {
      memmove(cp + len2, cp + 1, len);
      memcpy(cp, gl_home_dir, len2);
      c2 = cp + len + len2;
      *c2++ = '\0';
      *c2++ = ch;
      *c2 = '\0';
      gl_matchlist[0] = cp;
     }
    }
   }
   break;
  }
 }
 return (((void*)0));
}
