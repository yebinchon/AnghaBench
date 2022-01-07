
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int ts_extension_invalidate (int ) ;

__attribute__((used)) static void
cache_invalidate_callback(Datum arg, Oid relid)
{
 ts_extension_invalidate(relid);
}
