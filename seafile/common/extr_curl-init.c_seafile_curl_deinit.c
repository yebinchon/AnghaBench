
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int ) ;
 int CRYPTO_set_locking_callback (int ) ;
 int * curl_locks ;
 int free (int *) ;
 int pthread_mutex_destroy (int *) ;

void seafile_curl_deinit()
{
    int i;
    CRYPTO_set_id_callback (0);
    CRYPTO_set_locking_callback (0);

    for (i = 0; i < CRYPTO_num_locks(); ++i) {
        pthread_mutex_destroy (&curl_locks[i]);
    }
    free (curl_locks);
}
