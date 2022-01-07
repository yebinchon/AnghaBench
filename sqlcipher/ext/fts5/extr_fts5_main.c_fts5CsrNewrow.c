
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Cursor ;


 int CsrFlagSet (int *,int) ;
 int FTS5CSR_REQUIRE_CONTENT ;
 int FTS5CSR_REQUIRE_DOCSIZE ;
 int FTS5CSR_REQUIRE_INST ;
 int FTS5CSR_REQUIRE_POSLIST ;

__attribute__((used)) static void fts5CsrNewrow(Fts5Cursor *pCsr){
  CsrFlagSet(pCsr,
      FTS5CSR_REQUIRE_CONTENT
    | FTS5CSR_REQUIRE_DOCSIZE
    | FTS5CSR_REQUIRE_INST
    | FTS5CSR_REQUIRE_POSLIST
  );
}
