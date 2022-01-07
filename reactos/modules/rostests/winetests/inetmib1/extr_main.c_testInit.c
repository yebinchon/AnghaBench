
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;
typedef int AsnObjectIdentifier ;


 int GetLastError () ;
 int SnmpUtilOidFree (int *) ;
 int SnmpUtilOidToA (int *) ;
 int ok (int,char*,int ) ;
 int pSnmpExtensionInit (int ,int *,int *) ;
 int strcmp (char*,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void testInit(void)
{
    BOOL ret;
    HANDLE event;
    AsnObjectIdentifier oid;

    if (!pSnmpExtensionInit)
    {
        win_skip("no SnmpExtensionInit\n");
        return;
    }

if (0)
{
    ret = pSnmpExtensionInit(0, ((void*)0), ((void*)0));
    ret = pSnmpExtensionInit(0, ((void*)0), &oid);
    ret = pSnmpExtensionInit(0, &event, ((void*)0));
}

    ret = pSnmpExtensionInit(0, &event, &oid);
    ok(ret, "SnmpExtensionInit failed: %d\n", GetLastError());
    ok(!strcmp("1.3.6.1.2.1.1", SnmpUtilOidToA(&oid)),
        "Expected 1.3.6.1.2.1.1, got %s\n", SnmpUtilOidToA(&oid));


if (0)
{


    SnmpUtilOidFree(&oid);
}
}
