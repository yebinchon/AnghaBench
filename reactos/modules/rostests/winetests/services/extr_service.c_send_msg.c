
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int WriteFile (int ,char*,scalar_t__,int *,int *) ;
 int pipe_handle ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void send_msg(const char *type, const char *msg)
{
    DWORD written = 0;
    char buf[512];

    sprintf(buf, "%s:%s", type, msg);
    WriteFile(pipe_handle, buf, strlen(buf)+1, &written, ((void*)0));
}
