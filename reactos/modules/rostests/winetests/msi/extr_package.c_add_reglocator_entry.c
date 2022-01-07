
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insert ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ run_query (int ,char*) ;
 int sprintf (char*,char const*,char const*,scalar_t__,char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static UINT add_reglocator_entry( MSIHANDLE hdb, const char *sig, UINT root, const char *path,
                                  const char *name, UINT type )
{
    const char insert[] =
        "INSERT INTO `RegLocator` (`Signature_`, `Root`, `Key`, `Name`, `Type`) "
        "VALUES( '%s', %u, '%s', '%s', %u )";
    char *query;
    UINT sz, r;

    sz = strlen( sig ) + 10 + strlen( path ) + strlen( name ) + 10 + sizeof( insert );
    query = HeapAlloc( GetProcessHeap(), 0, sz );
    sprintf( query, insert, sig, root, path, name, type );
    r = run_query( hdb, query );
    HeapFree( GetProcessHeap(), 0, query );
    ok(r == ERROR_SUCCESS, "failed to insert into reglocator table: %u\n", r); return r;

}
