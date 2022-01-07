
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOG_LEVEL ;


 int LOG_ERR ;
 int LOG_INFO ;



 int LOG_WARNING ;

int level_syslog(LOG_LEVEL level)
{
    switch (level) {
        case 129:
            return LOG_INFO;

        case 128:
            return LOG_WARNING;

        case 130:
            return LOG_ERR;
    }

    return LOG_INFO;
}
