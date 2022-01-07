
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ score; TYPE_4__* cmpobj; } ;
struct TYPE_9__ {TYPE_4__* obj; TYPE_1__ u; } ;
typedef TYPE_2__ redisSortObject ;
struct TYPE_11__ {int ptr; } ;
struct TYPE_10__ {scalar_t__ sort_desc; scalar_t__ sort_store; scalar_t__ sort_bypattern; int sort_alpha; } ;


 int collateStringObjects (TYPE_4__*,TYPE_4__*) ;
 int compareStringObjects (TYPE_4__*,TYPE_4__*) ;
 TYPE_3__ server ;
 int strcoll (int ,int ) ;

int sortCompare(const void *s1, const void *s2) {
    const redisSortObject *so1 = s1, *so2 = s2;
    int cmp;

    if (!server.sort_alpha) {

        if (so1->u.score > so2->u.score) {
            cmp = 1;
        } else if (so1->u.score < so2->u.score) {
            cmp = -1;
        } else {



            cmp = compareStringObjects(so1->obj,so2->obj);
        }
    } else {

        if (server.sort_bypattern) {
            if (!so1->u.cmpobj || !so2->u.cmpobj) {

                if (so1->u.cmpobj == so2->u.cmpobj)
                    cmp = 0;
                else if (so1->u.cmpobj == ((void*)0))
                    cmp = -1;
                else
                    cmp = 1;
            } else {

                if (server.sort_store) {
                    cmp = compareStringObjects(so1->u.cmpobj,so2->u.cmpobj);
                } else {


                    cmp = strcoll(so1->u.cmpobj->ptr,so2->u.cmpobj->ptr);
                }
            }
        } else {

            if (server.sort_store) {
                cmp = compareStringObjects(so1->obj,so2->obj);
            } else {
                cmp = collateStringObjects(so1->obj,so2->obj);
            }
        }
    }
    return server.sort_desc ? -cmp : cmp;
}
