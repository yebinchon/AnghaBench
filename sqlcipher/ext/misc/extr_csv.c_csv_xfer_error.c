
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int zErr; } ;
struct TYPE_6__ {int zErrMsg; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef TYPE_2__ CsvTable ;
typedef TYPE_3__ CsvReader ;


 int sqlite3_free (int ) ;
 int sqlite3_mprintf (char*,int ) ;

__attribute__((used)) static void csv_xfer_error(CsvTable *pTab, CsvReader *pRdr){
  sqlite3_free(pTab->base.zErrMsg);
  pTab->base.zErrMsg = sqlite3_mprintf("%s", pRdr->zErr);
}
