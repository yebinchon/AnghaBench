
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_found_func ;
typedef int ScanKeyData ;


 int AccessShareLock ;
 int Anum_tablespace_tablespace_name ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_NAMEEQ ;
 int INVALID_INDEXID ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int namein ;
 int tablespace_scan_internal (int ,int *,int,int ,int *,void*,int ,int ) ;

__attribute__((used)) static int
tablespace_scan_by_name(const char *tspcname, tuple_found_func tuple_found, void *data)
{
 ScanKeyData scankey[1];
 int nkeys = 0;

 if (((void*)0) != tspcname)
  ScanKeyInit(&scankey[nkeys++],
     Anum_tablespace_tablespace_name,
     BTEqualStrategyNumber,
     F_NAMEEQ,
     DirectFunctionCall1(namein, CStringGetDatum(tspcname)));

 return tablespace_scan_internal(INVALID_INDEXID,
         scankey,
         nkeys,
         tuple_found,
         ((void*)0),
         data,
         0,
         AccessShareLock);
}
