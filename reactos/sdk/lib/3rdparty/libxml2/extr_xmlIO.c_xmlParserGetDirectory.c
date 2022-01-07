
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_XMLPGD_SEP (char) ;
 int * getcwd (char*,int) ;
 size_t strlen (char*) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ xmlInputCallbackInitialized ;
 char* xmlMemStrdup (char*) ;
 int xmlRegisterDefaultInputCallbacks () ;

char *
xmlParserGetDirectory(const char *filename) {
    char *ret = ((void*)0);
    char dir[1024];
    char *cur;





    if (xmlInputCallbackInitialized == 0)
 xmlRegisterDefaultInputCallbacks();

    if (filename == ((void*)0)) return(((void*)0));







    strncpy(dir, filename, 1023);
    dir[1023] = 0;
    cur = &dir[strlen(dir)];
    while (cur > dir) {
         if ((*cur=='/')) break;
  cur --;
    }
    if ((*cur=='/')) {
        if (cur == dir) dir[1] = 0;
 else *cur = 0;
 ret = xmlMemStrdup(dir);
    } else {
        if (getcwd(dir, 1024) != ((void*)0)) {
     dir[1023] = 0;
     ret = xmlMemStrdup(dir);
 }
    }
    return(ret);

}
