
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 size_t MAX_PATHS ;
 scalar_t__ const PATH_SEPARATOR ;
 int fprintf (int ,char*) ;
 size_t nbpaths ;
 int ** paths ;
 int stderr ;
 int * xmlStrndup (scalar_t__ const*,int) ;

__attribute__((used)) static
void parsePath(const xmlChar *path) {
    const xmlChar *cur;

    if (path == ((void*)0))
 return;
    while (*path != 0) {
 if (nbpaths >= MAX_PATHS) {
     fprintf(stderr, "MAX_PATHS reached: too many paths\n");
     return;
 }
 cur = path;
 while ((*cur == ' ') || (*cur == PATH_SEPARATOR))
     cur++;
 path = cur;
 while ((*cur != 0) && (*cur != ' ') && (*cur != PATH_SEPARATOR))
     cur++;
 if (cur != path) {
     paths[nbpaths] = xmlStrndup(path, cur - path);
     if (paths[nbpaths] != ((void*)0))
  nbpaths++;
     path = cur;
 }
    }
}
