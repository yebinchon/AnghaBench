
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int options; int name; int keydev; int keyfile; int uuid; } ;
typedef TYPE_1__ crypto_device ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static crypto_device* crypt_device_free(crypto_device *d) {
        if (!d)
                return ((void*)0);

        free(d->uuid);
        free(d->keyfile);
        free(d->keydev);
        free(d->name);
        free(d->options);
        return mfree(d);
}
