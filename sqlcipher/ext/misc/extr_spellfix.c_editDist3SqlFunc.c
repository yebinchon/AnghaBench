
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int EditDist3Lang ;
typedef int EditDist3FromString ;
typedef int EditDist3Config ;


 int editDist3ConfigLoad (int *,int *,char const*) ;
 int editDist3Core (int *,char const*,int,int const*,int ) ;
 int * editDist3FindLang (int *,int) ;
 int editDist3FromStringDelete (int *) ;
 int * editDist3FromStringNew (int const*,char const*,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void editDist3SqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  EditDist3Config *pConfig = (EditDist3Config*)sqlite3_user_data(context);
  sqlite3 *db = sqlite3_context_db_handle(context);
  int rc;
  if( argc==1 ){
    const char *zTable = (const char*)sqlite3_value_text(argv[0]);
    rc = editDist3ConfigLoad(pConfig, db, zTable);
    if( rc ) sqlite3_result_error_code(context, rc);
  }else{
    const char *zA = (const char*)sqlite3_value_text(argv[0]);
    const char *zB = (const char*)sqlite3_value_text(argv[1]);
    int nA = sqlite3_value_bytes(argv[0]);
    int nB = sqlite3_value_bytes(argv[1]);
    int iLang = argc==3 ? sqlite3_value_int(argv[2]) : 0;
    const EditDist3Lang *pLang = editDist3FindLang(pConfig, iLang);
    EditDist3FromString *pFrom;
    int dist;

    pFrom = editDist3FromStringNew(pLang, zA, nA);
    if( pFrom==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }
    dist = editDist3Core(pFrom, zB, nB, pLang, 0);
    editDist3FromStringDelete(pFrom);
    if( dist==(-1) ){
      sqlite3_result_error_nomem(context);
    }else{
      sqlite3_result_int(context, dist);
    }
  }
}
