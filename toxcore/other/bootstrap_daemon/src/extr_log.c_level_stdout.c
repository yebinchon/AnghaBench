
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOG_LEVEL ;
typedef int FILE ;





 int * stderr ;
 int * stdout ;

FILE *level_stdout(LOG_LEVEL level)
{
    switch (level) {
        case 129:
            return stdout;

        case 128:
        case 130:
            return stderr;
    }

    return stdout;
}
