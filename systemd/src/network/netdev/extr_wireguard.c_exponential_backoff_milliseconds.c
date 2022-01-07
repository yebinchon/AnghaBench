
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (unsigned int,unsigned int) ;
 int USEC_PER_MSEC ;

__attribute__((used)) static int exponential_backoff_milliseconds(unsigned n_retries) {
        return (2 << MIN(n_retries, 7U)) * 100 * USEC_PER_MSEC;
}
