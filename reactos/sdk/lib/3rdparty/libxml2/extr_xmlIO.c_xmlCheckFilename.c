
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct _stat {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;
 int xmlWrapStatUtf8 (char const*,struct stat*) ;

int
xmlCheckFilename (const char *path)
{







    if (path == ((void*)0))
 return(0);
    return 1;
}
