
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {scalar_t__ rise_count; scalar_t__ fall_count; } ;
typedef TYPE_3__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_10__ {TYPE_2__* shm; TYPE_1__* check_peer_addr; TYPE_3__* conf; } ;
typedef TYPE_4__ ngx_http_upstream_check_peer_t ;
struct TYPE_11__ {int log; } ;
struct TYPE_8__ {scalar_t__ delete; scalar_t__ rise_count; scalar_t__ fall_count; int down; int mutex; int access_time; } ;
struct TYPE_7__ {int name; } ;


 int NGX_LOG_ERR ;
 scalar_t__ PEER_DELETED ;
 int ngx_current_msec ;
 TYPE_6__* ngx_cycle ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static void
ngx_http_upstream_check_status_update(ngx_http_upstream_check_peer_t *peer,
    ngx_int_t result)
{
    ngx_http_upstream_check_srv_conf_t *ucscf;

    ucscf = peer->conf;

    ngx_shmtx_lock(&peer->shm->mutex);

    if (peer->shm->delete == PEER_DELETED) {

        ngx_shmtx_unlock(&peer->shm->mutex);
        return;
    }

    if (result) {
        peer->shm->rise_count++;
        peer->shm->fall_count = 0;
        if (peer->shm->down && peer->shm->rise_count >= ucscf->rise_count) {
            peer->shm->down = 0;
            ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                          "enable check peer: %V ",
                          &peer->check_peer_addr->name);
        }
    } else {
        peer->shm->rise_count = 0;
        peer->shm->fall_count++;
        if (!peer->shm->down && peer->shm->fall_count >= ucscf->fall_count) {
            peer->shm->down = 1;
            ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                          "disable check peer: %V ",
                          &peer->check_peer_addr->name);
        }
    }

    peer->shm->access_time = ngx_current_msec;

    ngx_shmtx_unlock(&peer->shm->mutex);
}
