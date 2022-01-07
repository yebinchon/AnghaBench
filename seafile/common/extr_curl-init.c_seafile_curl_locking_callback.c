
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_LOCK ;
 int * curl_locks ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void seafile_curl_locking_callback(int mode, int n, const char* file, int line)
{
    if (mode & CRYPTO_LOCK) {
        pthread_mutex_lock (&curl_locks[n]);
    } else {
        pthread_mutex_unlock (&curl_locks[n]);
    }
}
