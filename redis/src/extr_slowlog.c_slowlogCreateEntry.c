
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int argc; long long duration; void* cname; void* peerid; scalar_t__ id; int time; TYPE_3__** argv; } ;
typedef TYPE_2__ slowlogEntry ;
typedef void* sds ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ refcount; int ptr; } ;
typedef TYPE_3__ robj ;
struct TYPE_16__ {TYPE_1__* name; } ;
typedef TYPE_4__ client ;
struct TYPE_17__ {int slowlog_entry_id; } ;
struct TYPE_13__ {int ptr; } ;


 scalar_t__ OBJ_SHARED_REFCOUNT ;
 scalar_t__ OBJ_STRING ;
 int SLOWLOG_ENTRY_MAX_ARGC ;
 unsigned long SLOWLOG_ENTRY_MAX_STRING ;
 void* createObject (scalar_t__,void*) ;
 TYPE_3__* dupStringObject (TYPE_3__*) ;
 int getClientPeerId (TYPE_4__*) ;
 scalar_t__ sdsEncodedObject (TYPE_3__*) ;
 void* sdscatprintf (void*,char*,unsigned long) ;
 void* sdsempty () ;
 unsigned long sdslen (int ) ;
 void* sdsnew (int ) ;
 void* sdsnewlen (int ,unsigned long) ;
 TYPE_8__ server ;
 int time (int *) ;
 void* zmalloc (int) ;

slowlogEntry *slowlogCreateEntry(client *c, robj **argv, int argc, long long duration) {
    slowlogEntry *se = zmalloc(sizeof(*se));
    int j, slargc = argc;

    if (slargc > SLOWLOG_ENTRY_MAX_ARGC) slargc = SLOWLOG_ENTRY_MAX_ARGC;
    se->argc = slargc;
    se->argv = zmalloc(sizeof(robj*)*slargc);
    for (j = 0; j < slargc; j++) {



        if (slargc != argc && j == slargc-1) {
            se->argv[j] = createObject(OBJ_STRING,
                sdscatprintf(sdsempty(),"... (%d more arguments)",
                argc-slargc+1));
        } else {

            if (argv[j]->type == OBJ_STRING &&
                sdsEncodedObject(argv[j]) &&
                sdslen(argv[j]->ptr) > SLOWLOG_ENTRY_MAX_STRING)
            {
                sds s = sdsnewlen(argv[j]->ptr, SLOWLOG_ENTRY_MAX_STRING);

                s = sdscatprintf(s,"... (%lu more bytes)",
                    (unsigned long)
                    sdslen(argv[j]->ptr) - SLOWLOG_ENTRY_MAX_STRING);
                se->argv[j] = createObject(OBJ_STRING,s);
            } else if (argv[j]->refcount == OBJ_SHARED_REFCOUNT) {
                se->argv[j] = argv[j];
            } else {






                se->argv[j] = dupStringObject(argv[j]);
            }
        }
    }
    se->time = time(((void*)0));
    se->duration = duration;
    se->id = server.slowlog_entry_id++;
    se->peerid = sdsnew(getClientPeerId(c));
    se->cname = c->name ? sdsnew(c->name->ptr) : sdsempty();
    return se;
}
