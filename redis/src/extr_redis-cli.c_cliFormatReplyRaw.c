
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_4__ {int type; char* str; int len; char* integer; size_t elements; struct TYPE_4__** element; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_5__ {int eval_ldb_end; char* mb_delim; int output; int eval_ldb; int enable_ldb_on_eval; } ;


 int OUTPUT_STANDARD ;
 int cliRefreshPrompt () ;
 TYPE_2__ config ;
 int exit (int) ;
 int fprintf (int ,char*,int const) ;
 char* sdsCatColorizedLdbReply (char*,char*,int) ;
 char* sdscat (char*,char*) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdscatprintf (char*,char*,char*) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 int stderr ;
 char* strstr (char*,char*) ;

__attribute__((used)) static sds cliFormatReplyRaw(redisReply *r) {
    sds out = sdsempty(), tmp;
    size_t i;

    switch (r->type) {
    case 131:

        break;
    case 134:
        out = sdscatlen(out,r->str,r->len);
        out = sdscatlen(out,"\n",1);
        break;
    case 130:
    case 129:
    case 128:
        if (r->type == 130 && config.eval_ldb) {





            if (strstr(r->str,"<endsession>") == r->str) {
                config.enable_ldb_on_eval = 0;
                config.eval_ldb = 0;
                config.eval_ldb_end = 1;
                config.output = OUTPUT_STANDARD;
                cliRefreshPrompt();
            } else {
                out = sdsCatColorizedLdbReply(out,r->str,r->len);
            }
        } else {
            out = sdscatlen(out,r->str,r->len);
        }
        break;
    case 136:
        out = sdscat(out,r->integer ? "(true)" : "(false)");
    break;
    case 133:
        out = sdscatprintf(out,"%lld",r->integer);
        break;
    case 135:
        out = sdscatprintf(out,"%s",r->str);
        break;
    case 137:
        for (i = 0; i < r->elements; i++) {
            if (i > 0) out = sdscat(out,config.mb_delim);
            tmp = cliFormatReplyRaw(r->element[i]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            sdsfree(tmp);
        }
        break;
    case 132:
        for (i = 0; i < r->elements; i += 2) {
            if (i > 0) out = sdscat(out,config.mb_delim);
            tmp = cliFormatReplyRaw(r->element[i]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            sdsfree(tmp);

            out = sdscatlen(out," ",1);
            tmp = cliFormatReplyRaw(r->element[i+1]);
            out = sdscatlen(out,tmp,sdslen(tmp));
            sdsfree(tmp);
        }
        break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
