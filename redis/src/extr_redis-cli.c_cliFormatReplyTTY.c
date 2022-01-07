
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_3__ {int type; char* str; unsigned int elements; struct TYPE_3__** element; int integer; int len; } ;
typedef TYPE_1__ redisReply ;
typedef int _prefixfmt ;
 int exit (int) ;
 int fprintf (int ,char*,int const) ;
 int memset (char*,char,unsigned int) ;
 char* sdscat (char*,char*) ;
 char* sdscatlen (char*,char*,int ) ;
 char* sdscatprintf (char*,char*,char*,...) ;
 char* sdscatrepr (char*,char*,int ) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnew (char*) ;
 int sdsrange (char*,int ,int) ;
 int snprintf (char*,int,char*,unsigned int,char) ;
 int stderr ;

__attribute__((used)) static sds cliFormatReplyTTY(redisReply *r, char *prefix) {
    sds out = sdsempty();
    switch (r->type) {
    case 135:
        out = sdscatprintf(out,"(error) %s\n", r->str);
    break;
    case 130:
        out = sdscat(out,r->str);
        out = sdscat(out,"\n");
    break;
    case 134:
        out = sdscatprintf(out,"(integer) %lld\n",r->integer);
    break;
    case 136:
        out = sdscatprintf(out,"(double) %s\n",r->str);
    break;
    case 129:
    case 128:



        if (r->type == 129) {
            out = sdscatrepr(out,r->str,r->len);
            out = sdscat(out,"\n");
        } else {
            out = sdscatlen(out,r->str,r->len);
            out = sdscat(out,"\n");
        }
    break;
    case 132:
        out = sdscat(out,"(nil)\n");
    break;
    case 137:
        out = sdscat(out,r->integer ? "(true)\n" : "(false)\n");
    break;
    case 138:
    case 133:
    case 131:
        if (r->elements == 0) {
            if (r->type == 138)
                out = sdscat(out,"(empty array)\n");
            else if (r->type == 133)
                out = sdscat(out,"(empty hash)\n");
            else if (r->type == 131)
                out = sdscat(out,"(empty set)\n");
            else
                out = sdscat(out,"(empty aggregate type)\n");
        } else {
            unsigned int i, idxlen = 0;
            char _prefixlen[16];
            char _prefixfmt[16];
            sds _prefix;
            sds tmp;


            i = r->elements;
            if (r->type == 133) i /= 2;
            do {
                idxlen++;
                i /= 10;
            } while(i);


            memset(_prefixlen,' ',idxlen+2);
            _prefixlen[idxlen+2] = '\0';
            _prefix = sdscat(sdsnew(prefix),_prefixlen);


            char numsep;
            if (r->type == 131) numsep = '~';
            else if (r->type == 133) numsep = '#';
            else numsep = ')';
            snprintf(_prefixfmt,sizeof(_prefixfmt),"%%s%%%ud%c ",idxlen,numsep);

            for (i = 0; i < r->elements; i++) {
                unsigned int human_idx = (r->type == 133) ?
                                         i/2 : i;
                human_idx++;



                out = sdscatprintf(out,_prefixfmt,i == 0 ? "" : prefix,human_idx);


                tmp = cliFormatReplyTTY(r->element[i],_prefix);
                out = sdscatlen(out,tmp,sdslen(tmp));
                sdsfree(tmp);


                if (r->type == 133) {
                    i++;
                    sdsrange(out,0,-2);
                    out = sdscat(out," => ");
                    tmp = cliFormatReplyTTY(r->element[i],_prefix);
                    out = sdscatlen(out,tmp,sdslen(tmp));
                    sdsfree(tmp);
                }
            }
            sdsfree(_prefix);
        }
    break;
    default:
        fprintf(stderr,"Unknown reply type: %d\n", r->type);
        exit(1);
    }
    return out;
}
