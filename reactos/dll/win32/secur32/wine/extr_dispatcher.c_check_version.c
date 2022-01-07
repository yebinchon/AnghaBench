
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp ;
struct TYPE_3__ {int major; int minor; int micro; int pipe_in; } ;
typedef TYPE_1__* PNegoHelper ;


 int ERR (char*) ;
 int TRACE (char*,...) ;
 int debugstr_a (char*) ;
 char* memchr (char*,char,int) ;
 int read (int ,char*,int) ;
 int sscanf (char*,char*,int*,int*,int*) ;

void check_version(PNegoHelper helper)
{
    char temp[80];
    char *newline;
    int major = 0, minor = 0, micro = 0, ret;

    TRACE("Checking version of helper\n");
    if(helper != ((void*)0))
    {
        int len = read(helper->pipe_in, temp, sizeof(temp)-1);
        if (len > 8)
        {
            if((newline = memchr(temp, '\n', len)) != ((void*)0))
                *newline = '\0';
            else
                temp[len] = 0;

            TRACE("Exact version is %s\n", debugstr_a(temp));
            ret = sscanf(temp, "Version %d.%d.%d", &major, &minor, &micro);
            if(ret != 3)
            {
                ERR("Failed to get the helper version.\n");
                helper->major = helper->minor = helper->micro = -1;
            }
            else
            {
                TRACE("Version recognized: %d.%d.%d\n", major, minor, micro);
                helper->major = major;
                helper->minor = minor;
                helper->micro = micro;
            }
        }
    }
}
