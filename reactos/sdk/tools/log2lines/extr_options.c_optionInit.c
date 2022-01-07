
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buildrev; int range; int rev; } ;


 char const* CMD_7Z ;
 int DEF_RANGE ;
 int LINESIZE ;
 int SOURCES_ENV ;
 int getRevision (int *,int) ;
 int getTBRevision (int ) ;
 char* getenv (int ) ;
 int l2l_dbg (int,char*,int ) ;
 int malloc (int ) ;
 int opt_7z ;
 int opt_Pipe ;
 int opt_SourcesPath ;
 int opt_dir ;
 int opt_help ;
 int opt_logFile ;
 char* opt_mod ;
 int opt_scanned ;
 TYPE_1__ revinfo ;
 int strcat (int ,char const*) ;
 int strcpy (int ,char const*) ;
 int usage (int) ;

int optionInit(int argc, const char **argv)
{
    int i;
    char *s;

    opt_mod = "a";
    strcpy(opt_dir, "");
    strcpy(opt_logFile, "");
    strcpy(opt_7z, CMD_7Z);
    strcpy(opt_SourcesPath, "");
    if ((s = getenv(SOURCES_ENV)))
        strcpy(opt_SourcesPath, s);
    revinfo.rev = getRevision(((void*)0), 1);
    revinfo.range = DEF_RANGE;
    revinfo.buildrev = getTBRevision(opt_dir);
    l2l_dbg(1, "Trunk build revision: %d\n", revinfo.buildrev);

    strcpy(opt_scanned, "");



    if ((argc == 1) ||
        ((argc == 2) && (argv[1][0] == '/') && (argv[1][1] == '?')))
    {
        opt_help++;
        usage(1);
        return -1;
    }

    for (i = 1; i < argc; i++)
    {

        if ((argv[i][0] == '-') && (i+1 < argc))
        {

            switch (argv[i][1])
            {
            case 'd':
                strcpy(opt_dir, argv[i+1]);
                break;
            case 'L':
                opt_mod = "w";

            case 'l':
                strcpy(opt_logFile, argv[i+1]);
                break;
            case 'P':
                if (!opt_Pipe)
                    opt_Pipe = malloc(LINESIZE);
                strcpy(opt_Pipe, argv[i+1]);
                break;
            case 'z':
                strcpy(opt_7z, argv[i+1]);
                break;
            }
        }

        strcat(opt_scanned, argv[i]);
        strcat(opt_scanned, " ");
    }

    l2l_dbg(4,"opt_scanned=[%s]\n",opt_scanned);

    return 0;
}
