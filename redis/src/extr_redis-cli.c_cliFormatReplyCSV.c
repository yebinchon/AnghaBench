
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {int type; unsigned int elements; struct TYPE_3__** element; int integer; int len; int str; } ;
typedef TYPE_1__ redisReply ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int sdscat (int ,char*) ;
 int sdscatlen (int ,int ,int ) ;
 int sdscatprintf (int ,char*,int ) ;
 int sdscatrepr (int ,int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int stderr ;
 int strlen (int ) ;

__attribute__((used)) static sds cliFormatReplyCSV(redisReply *r) {
    unsigned int i;

    sds out = sdsempty();
    switch (r->type) {
    case 134:
        out = sdscat(out,"ERROR,");
        out = sdscatrepr(out,r->str,strlen(r->str));
    break;
    case 130:
        out = sdscatrepr(out,r->str,r->len);
    break;
    case 133:
        out = sdscatprintf(out,"%lld",r->integer);
    break;
    case 135:
        out = sdscatprintf(out,"%s",r->str);
        break;
    case 129:
    case 128:
        out = sdscatrepr(out,r->str,r->len);
    break;
    case 131:
        out = sdscat(out,"NULL");
    break;
    case 136:
        out = sdscat(out,r->integer ? "true" : "false");
    break;
    case 137:
    case 132:
        for (i = 0; i < r->elements; i++) {
            sds tmp = cliFormatReplyCSV(r->element[i]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            if (i != r->elements-1) out = sdscat(out,",");
            sdsfree(tmp);
        }
    break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
