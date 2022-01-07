
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ quota_FILE ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;

long sqlite3_quota_file_available(quota_FILE *p){
  FILE* f = p->f;
  long pos1, pos2;
  int rc;
  pos1 = ftell(f);
  if ( pos1 < 0 ) return -1;
  rc = fseek(f, 0, SEEK_END);
  if ( rc != 0 ) return -1;
  pos2 = ftell(f);
  if ( pos2 < 0 ) return -1;
  rc = fseek(f, pos1, SEEK_SET);
  if ( rc != 0 ) return -1;
  return pos2 - pos1;
}
