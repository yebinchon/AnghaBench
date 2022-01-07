
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_6__ {int type; TYPE_1__* org; int full; } ;
struct TYPE_5__ {int hints; } ;
struct TYPE_4__ {int params; } ;


 int CLI_HELP_COMMAND ;
 TYPE_3__* helpEntries ;
 int helpEntriesLen ;
 scalar_t__ isspace (char const) ;
 TYPE_2__ pref ;
 char* sdscatsds (char*,char*) ;
 int sdsfree (char*) ;
 int sdsfreesplitres (char**,int) ;
 scalar_t__ sdslen (char*) ;
 char* sdsnew (int ) ;
 char* sdsnewlen (char*,int) ;
 int sdsrange (char*,int,int) ;
 char** sdssplitargs (char const*,int*) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *hintsCallback(const char *buf, int *color, int *bold) {
    if (!pref.hints) return ((void*)0);

    int i, argc, buflen = strlen(buf);
    sds *argv = sdssplitargs(buf,&argc);
    int endspace = buflen && isspace(buf[buflen-1]);


    if (argc == 0) {
        sdsfreesplitres(argv,argc);
        return ((void*)0);
    }

    for (i = 0; i < helpEntriesLen; i++) {
        if (!(helpEntries[i].type & CLI_HELP_COMMAND)) continue;

        if (strcasecmp(argv[0],helpEntries[i].full) == 0)
        {
            *color = 90;
            *bold = 0;
            sds hint = sdsnew(helpEntries[i].org->params);



            int toremove = argc-1;
            while(toremove > 0 && sdslen(hint)) {
                if (hint[0] == '[') break;
                if (hint[0] == ' ') toremove--;
                sdsrange(hint,1,-1);
            }


            if (!endspace) {
                sds newhint = sdsnewlen(" ",1);
                newhint = sdscatsds(newhint,hint);
                sdsfree(hint);
                hint = newhint;
            }

            sdsfreesplitres(argv,argc);
            return hint;
        }
    }
    sdsfreesplitres(argv,argc);
    return ((void*)0);
}
