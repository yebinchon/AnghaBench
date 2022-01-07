
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbg_vlog; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetEnvironmentVariableA (char*,char*,scalar_t__) ;
 scalar_t__ GetLastError () ;
 int SetLastError (scalar_t__) ;
 int extfmt_default_dbg_vlog ;
 int free (char*) ;
 TYPE_1__ funcs ;
 char* malloc (scalar_t__) ;
 int nb_debug_options ;
 int parse_options (char*) ;
 int rosfmt_default_dbg_vlog ;
 scalar_t__ strcmp (char*,char*) ;
 int winefmt_default_dbg_vlog ;

__attribute__((used)) static void debug_init(void)
{
    char *wine_debug;
    DWORD dwLength;

    DWORD LastError = GetLastError();

    if (nb_debug_options != -1) return;
    nb_debug_options = 0;

    dwLength = GetEnvironmentVariableA("DEBUGCHANNEL", ((void*)0), 0);
    if (dwLength)
    {
        wine_debug = malloc(dwLength);
        if (wine_debug)
        {
            if (GetEnvironmentVariableA("DEBUGCHANNEL", wine_debug, dwLength) < dwLength)
                parse_options(wine_debug);
            free(wine_debug);
        }
    }

    dwLength = GetEnvironmentVariableA("DEBUGFORMAT", ((void*)0), 0);
    if (dwLength)
    {
        wine_debug = malloc(dwLength);
        if (wine_debug)
        {
            if (GetEnvironmentVariableA("DEBUGFORMAT", wine_debug, dwLength) < dwLength)
            {
                if (strcmp(wine_debug, "wine") == 0)
                {
                    funcs.dbg_vlog = winefmt_default_dbg_vlog;
                }
                else
                if (strcmp(wine_debug, "extended") == 0 ||
                    strcmp(wine_debug, "ext") == 0)
                {
                    funcs.dbg_vlog = extfmt_default_dbg_vlog;
                }
                else
                {
                    funcs.dbg_vlog = rosfmt_default_dbg_vlog;
                }
            }
            free(wine_debug);
        }
    }

    SetLastError(LastError);
}
