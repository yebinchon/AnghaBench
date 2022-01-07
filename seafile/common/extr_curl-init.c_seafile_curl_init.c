
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int ) ;
 int CRYPTO_set_locking_callback (int ) ;
 int * curl_locks ;
 int * malloc (int) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_self ;
 int seafile_curl_locking_callback ;

void seafile_curl_init()
{
    int i;
    curl_locks = malloc (sizeof(pthread_mutex_t) * CRYPTO_num_locks());
    for (i = 0; i < CRYPTO_num_locks(); ++i) {
        pthread_mutex_init (&curl_locks[i], ((void*)0));
    }







    CRYPTO_set_id_callback (pthread_self);

    CRYPTO_set_locking_callback (seafile_curl_locking_callback);
}
