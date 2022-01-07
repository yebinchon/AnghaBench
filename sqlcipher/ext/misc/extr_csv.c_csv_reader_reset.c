
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int z; int zIn; scalar_t__ in; } ;
typedef TYPE_1__ CsvReader ;


 int csv_reader_init (TYPE_1__*) ;
 int fclose (scalar_t__) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void csv_reader_reset(CsvReader *p){
  if( p->in ){
    fclose(p->in);
    sqlite3_free(p->zIn);
  }
  sqlite3_free(p->z);
  csv_reader_init(p);
}
