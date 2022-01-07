
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_queue_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {TYPE_3__* inclusive; TYPE_3__* exact; } ;
typedef TYPE_2__ ngx_http_location_queue_t ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_6__ {scalar_t__ exact_match; TYPE_1__ name; scalar_t__ regex; scalar_t__ named; scalar_t__ noname; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;


 int ngx_filename_cmp (int ,int ,scalar_t__) ;
 scalar_t__ ngx_min (int ,int ) ;
 int ngx_strcmp (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_cmp_locations(const ngx_queue_t *one, const ngx_queue_t *two)
{
    ngx_int_t rc;
    ngx_http_core_loc_conf_t *first, *second;
    ngx_http_location_queue_t *lq1, *lq2;

    lq1 = (ngx_http_location_queue_t *) one;
    lq2 = (ngx_http_location_queue_t *) two;

    first = lq1->exact ? lq1->exact : lq1->inclusive;
    second = lq2->exact ? lq2->exact : lq2->inclusive;

    if (first->noname && !second->noname) {

        return 1;
    }

    if (!first->noname && second->noname) {

        return -1;
    }

    if (first->noname || second->noname) {

        return 0;
    }

    if (first->named && !second->named) {

        return 1;
    }

    if (!first->named && second->named) {

        return -1;
    }

    if (first->named && second->named) {
        return ngx_strcmp(first->name.data, second->name.data);
    }
    rc = ngx_filename_cmp(first->name.data, second->name.data,
                          ngx_min(first->name.len, second->name.len) + 1);

    if (rc == 0 && !first->exact_match && second->exact_match) {

        return 1;
    }

    return rc;
}
