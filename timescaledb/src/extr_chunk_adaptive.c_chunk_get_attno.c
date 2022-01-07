
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int AttrNumber ;


 char* get_attname_compat (int ,int ,int) ;
 int get_attnum (int ,char const*) ;

__attribute__((used)) static AttrNumber
chunk_get_attno(Oid hypertable_relid, Oid chunk_relid, AttrNumber hypertable_attnum)
{
 const char *attname = get_attname_compat(hypertable_relid, hypertable_attnum, 0);

 return get_attnum(chunk_relid, attname);
}
