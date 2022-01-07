
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int member_2; int member_1; } ;


 int atoi (char*) ;
 int chmhttp_server (char*) ;
 char* config_bind ;
 int config_port ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int no_argument ;
 char* optarg ;
 int optind ;
 int required_argument ;
 int stderr ;
 int strncpy (char*,char*,int) ;
 int usage (char*) ;

int main(int c, char **v)
{
    int optindex = 0;

    struct option longopts[] =
    {
        { "port", required_argument, 0, 'p' },
        { "bind", required_argument, 0, 'b' },
        { "help", no_argument, 0, 'h' },
        { 0, 0, 0, 0 }
    };

    while (1)
    {
        int o;
        o = getopt_long (c, v, "n:b:h", longopts, &optindex);
        if (o < 0)
        {
            break;
        }

        switch (o)
        {
            case 'p':
                config_port = atoi (optarg);
                if (config_port <= 0)
                {
                    fprintf(stderr, "bad port number (%s)\n", optarg);
                    exit(1);
                }
                break;

            case 'b':
                strncpy (config_bind, optarg, 65536);
                config_bind[65535] = '\0';
                break;

            case 'h':
                usage (v[0]);
                break;
        }

    }

    if (optind + 1 != c)
    {
        usage (v[0]);
    }


    chmhttp_server(v[optind]);



    return 0;
}
