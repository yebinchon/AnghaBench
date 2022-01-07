
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TAGREF ;
typedef int TAGID ;
typedef int TAG ;
typedef int * PDB ;
typedef int * HSDB ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int SDB_DATABASE_MAIN_SHIM ;
 scalar_t__ TRUE ;
 int mbstowcs (int *,char const*,int ) ;
 int ok (int,char*,...) ;
 int pSdbGetTagFromTagID (int *,int) ;
 int * pSdbInitDatabase (int ,int *) ;
 int pSdbReleaseDatabase (int *) ;
 scalar_t__ pSdbTagRefToTagID (int *,int ,int **,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static void ValidateShim(TAGREF trLayer, const char* name)
{
    HSDB hsdb = pSdbInitDatabase(SDB_DATABASE_MAIN_SHIM, ((void*)0));
    ok(hsdb != ((void*)0), "Expected a valid handle\n");
    if (hsdb)
    {
        PDB pdb = ((void*)0);
        TAGID tagid = 0xdeadbeef;
        WCHAR nameW[256] = { 0 };
        BOOL ret;

        mbstowcs(nameW, name, strlen(name));

        ret = pSdbTagRefToTagID(hsdb, trLayer, &pdb, &tagid);
        ok(ret == TRUE, "Expected pSdbTagRefToTagID to succeed\n");
        if (ret)
        {
            TAG tag;
            ok(pdb != ((void*)0), "Expected pdb to be a valid pointer\n");
            ok(tagid != 0 && tagid != 0xdeadbeef, "Expected tagid to be a valid tag id, was: 0x%x\n", tagid);
            tag = pSdbGetTagFromTagID(pdb, tagid);
            ok(tag == 0x700b, "Expected tag to be 0x700b, was 0x%x\n", (DWORD)tag);
        }

        pSdbReleaseDatabase(hsdb);
    }
}
