
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t n_decrypted; TYPE_1__* decrypted; } ;
struct TYPE_8__ {TYPE_2__* name; scalar_t__ device; int relinquished; } ;
typedef TYPE_1__ DecryptedPartition ;
typedef TYPE_2__ DecryptedImage ;


 int crypt_deactivate (scalar_t__,TYPE_2__*) ;
 int crypt_free (scalar_t__) ;
 int free (TYPE_2__*) ;
 int log_debug_errno (int,char*,TYPE_2__*) ;

DecryptedImage* decrypted_image_unref(DecryptedImage* d) {
        return ((void*)0);
}
