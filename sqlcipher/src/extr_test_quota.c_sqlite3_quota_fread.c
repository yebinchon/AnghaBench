
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ quota_FILE ;


 size_t fread (void*,size_t,size_t,int ) ;

size_t sqlite3_quota_fread(
  void *pBuf,
  size_t size,
  size_t nmemb,
  quota_FILE *p
){
  return fread(pBuf, size, nmemb, p->f);
}
