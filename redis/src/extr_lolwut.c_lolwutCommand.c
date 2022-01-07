
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int verstr ;
struct TYPE_8__ {int argc; TYPE_7__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int ptr; } ;


 scalar_t__ C_OK ;
 char* REDIS_VERSION ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,TYPE_7__*,long*,int *) ;
 int lolwut5Command (TYPE_1__*) ;
 int lolwut6Command (TYPE_1__*) ;
 int lolwutUnstableCommand (TYPE_1__*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strcasecmp (int ,char*) ;

void lolwutCommand(client *c) {
    char *v = REDIS_VERSION;
    char verstr[64];

    if (c->argc >= 3 && !strcasecmp(c->argv[1]->ptr,"version")) {
        long ver;
        if (getLongFromObjectOrReply(c,c->argv[2],&ver,((void*)0)) != C_OK) return;
        snprintf(verstr,sizeof(verstr),"%u.0.0",(unsigned int)ver);
        v = verstr;




        c->argv += 2;
        c->argc -= 2;
    }

    if ((v[0] == '5' && v[1] == '.' && v[2] != '9') ||
        (v[0] == '4' && v[1] == '.' && v[2] == '9'))
        lolwut5Command(c);
    else if ((v[0] == '6' && v[1] == '.' && v[2] != '9') ||
             (v[0] == '5' && v[1] == '.' && v[2] == '9'))
        lolwut6Command(c);
    else
        lolwutUnstableCommand(c);


    if (v == verstr) {
        c->argv -= 2;
        c->argc += 2;
    }
}
