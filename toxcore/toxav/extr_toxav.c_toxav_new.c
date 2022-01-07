
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int interval; TYPE_4__* msi; int mutex; TYPE_2__* m; } ;
typedef TYPE_1__ ToxAV ;
typedef int Tox ;
struct TYPE_11__ {TYPE_1__* av; } ;
struct TYPE_10__ {scalar_t__ msi_packet; } ;
typedef scalar_t__ TOXAV_ERR_NEW ;
typedef TYPE_2__ Messenger ;


 int LOGGER_WARNING (char*) ;
 scalar_t__ TOXAV_ERR_NEW_MALLOC ;
 scalar_t__ TOXAV_ERR_NEW_MULTIPLE ;
 scalar_t__ TOXAV_ERR_NEW_NULL ;
 scalar_t__ TOXAV_ERR_NEW_OK ;
 int callback_capabilites ;
 int callback_end ;
 int callback_error ;
 int callback_invite ;
 int callback_start ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ create_recursive_mutex (int ) ;
 int free (TYPE_1__*) ;
 int msi_OnCapabilities ;
 int msi_OnEnd ;
 int msi_OnError ;
 int msi_OnInvite ;
 int msi_OnPeerTimeout ;
 int msi_OnStart ;
 TYPE_4__* msi_new (TYPE_2__*) ;
 int msi_register_callback (TYPE_4__*,int ,int ) ;
 int pthread_mutex_destroy (int ) ;

ToxAV *toxav_new(Tox *tox, TOXAV_ERR_NEW *error)
{
    TOXAV_ERR_NEW rc = TOXAV_ERR_NEW_OK;
    ToxAV *av = ((void*)0);

    if (tox == ((void*)0)) {
        rc = TOXAV_ERR_NEW_NULL;
        goto END;
    }

    if (((Messenger *)tox)->msi_packet) {
        rc = TOXAV_ERR_NEW_MULTIPLE;
        goto END;
    }

    av = calloc (sizeof(ToxAV), 1);

    if (av == ((void*)0)) {
        LOGGER_WARNING("Allocation failed!");
        rc = TOXAV_ERR_NEW_MALLOC;
        goto END;
    }

    if (create_recursive_mutex(av->mutex) != 0) {
        LOGGER_WARNING("Mutex creation failed!");
        rc = TOXAV_ERR_NEW_MALLOC;
        goto END;
    }

    av->m = (Messenger *)tox;
    av->msi = msi_new(av->m);

    if (av->msi == ((void*)0)) {
        pthread_mutex_destroy(av->mutex);
        rc = TOXAV_ERR_NEW_MALLOC;
        goto END;
    }

    av->interval = 200;
    av->msi->av = av;

    msi_register_callback(av->msi, callback_invite, msi_OnInvite);
    msi_register_callback(av->msi, callback_start, msi_OnStart);
    msi_register_callback(av->msi, callback_end, msi_OnEnd);
    msi_register_callback(av->msi, callback_error, msi_OnError);
    msi_register_callback(av->msi, callback_error, msi_OnPeerTimeout);
    msi_register_callback(av->msi, callback_capabilites, msi_OnCapabilities);

END:

    if (error)
        *error = rc;

    if (rc != TOXAV_ERR_NEW_OK) {
        free(av);
        av = ((void*)0);
    }

    return av;
}
