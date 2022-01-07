
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct ucred {scalar_t__ uid; scalar_t__ gid; } ;
struct TYPE_10__ {scalar_t__ timestamp; scalar_t__ n_ref; scalar_t__ uid; scalar_t__ gid; size_t label_size; int label; } ;
typedef TYPE_1__ Server ;
typedef TYPE_1__ ClientContext ;


 int CLOCK_MONOTONIC ;
 scalar_t__ MAX_USEC ;
 scalar_t__ REFRESH_USEC ;
 scalar_t__ USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 int client_context_really_refresh (TYPE_1__*,TYPE_1__*,struct ucred const*,char const*,size_t,char const*,scalar_t__) ;
 int client_context_reset (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ gid_is_valid (scalar_t__) ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 scalar_t__ now (int ) ;
 scalar_t__ uid_is_valid (scalar_t__) ;

void client_context_maybe_refresh(
                Server *s,
                ClientContext *c,
                const struct ucred *ucred,
                const char *label, size_t label_size,
                const char *unit_id,
                usec_t timestamp) {

        assert(s);
        assert(c);

        if (timestamp == USEC_INFINITY)
                timestamp = now(CLOCK_MONOTONIC);


        if (c->timestamp == USEC_INFINITY)
                goto refresh;



        if (c->n_ref == 0 && c->timestamp + MAX_USEC < timestamp) {
                client_context_reset(s, c);
                goto refresh;
        }


        if (c->timestamp + REFRESH_USEC < timestamp)
                goto refresh;


        if (ucred && uid_is_valid(ucred->uid) && c->uid != ucred->uid)
                goto refresh;

        if (ucred && gid_is_valid(ucred->gid) && c->gid != ucred->gid)
                goto refresh;

        if (label_size > 0 && (label_size != c->label_size || memcmp(label, c->label, label_size) != 0))
                goto refresh;

        return;

refresh:
        client_context_really_refresh(s, c, ucred, label, label_size, unit_id, timestamp);
}
