
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hviews ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MY_NVIEWS ;
 scalar_t__ MsiCloseHandle (int) ;
 scalar_t__ MsiDatabaseOpenViewA (int,char*,int*) ;
 int MsiViewClose (int) ;
 int create_db () ;
 int memset (int*,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_handle_limit(void)
{
    int i;
    MSIHANDLE hdb;
    MSIHANDLE hviews[MY_NVIEWS];
    UINT r;


    hdb = create_db();
    ok( hdb, "failed to create db\n");

    memset(hviews, 0, sizeof(hviews));

    for (i=0; i<MY_NVIEWS; i++) {
        static char szQueryBuf[256] = "SELECT * from `_Tables`";
        hviews[i] = 0xdeadbeeb;
        r = MsiDatabaseOpenViewA(hdb, szQueryBuf, &hviews[i]);
        if( r != ERROR_SUCCESS || hviews[i] == 0xdeadbeeb ||
            hviews[i] == 0 || (i && (hviews[i] == hviews[i-1])))
            break;
    }

    ok( i == MY_NVIEWS, "problem opening views\n");

    for (i=0; i<MY_NVIEWS; i++) {
        if (hviews[i] != 0 && hviews[i] != 0xdeadbeeb) {
            MsiViewClose(hviews[i]);
            r = MsiCloseHandle(hviews[i]);
            if (r != ERROR_SUCCESS)
                break;
        }
    }

    ok( i == MY_NVIEWS, "problem closing views\n");

    r = MsiCloseHandle(hdb);
    ok( r == ERROR_SUCCESS, "failed to close database\n");
}
