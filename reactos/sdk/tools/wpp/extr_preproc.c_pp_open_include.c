
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ debug; } ;
struct TYPE_3__ {char* (* lookup ) (char const*,int,char const*,int ,int ) ;void* (* open ) (char*,int) ;} ;


 int free (char*) ;
 int includepath ;
 int nincludepath ;
 TYPE_2__ pp_status ;
 int printf (char*,char*) ;
 char* stub1 (char const*,int,char const*,int ,int ) ;
 void* stub2 (char*,int) ;
 TYPE_1__* wpp_callbacks ;

void *pp_open_include(const char *name, int type, const char *parent_name, char **newpath)
{
    char *path;
    void *fp;

    if (!(path = wpp_callbacks->lookup(name, type, parent_name, includepath,
                                       nincludepath))) return ((void*)0);
    fp = wpp_callbacks->open(path, type);

    if (fp)
    {
        if (pp_status.debug)
            printf("Going to include <%s>\n", path);
        if (newpath) *newpath = path;
        else free( path );
        return fp;
    }
    free( path );
    return ((void*)0);
}
