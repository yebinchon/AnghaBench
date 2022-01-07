
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zilog_t ;
typedef int uint64_t ;
typedef int lr_t ;



__attribute__((used)) static int
zil_noop_log_record(zilog_t *zilog, lr_t *lrc, void *tx, uint64_t first_txg)
{
 return (0);
}
