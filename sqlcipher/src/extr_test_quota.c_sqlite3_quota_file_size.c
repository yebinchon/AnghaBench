
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_5__ {TYPE_1__* pFile; } ;
typedef TYPE_2__ quota_FILE ;
struct TYPE_4__ {int iSize; } ;



sqlite3_int64 sqlite3_quota_file_size(quota_FILE *p){
  return p->pFile ? p->pFile->iSize : -1;
}
