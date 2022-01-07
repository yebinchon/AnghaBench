
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fh; } ;
typedef int PAVIFILE ;
typedef TYPE_1__ COMMON_AVI_HEADERS ;


 int AVIFileOpenA (int *,char*,int ,long) ;
 scalar_t__ DeleteFileA (char*) ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int OF_SHARE_DENY_WRITE ;
 int create_avi_file (TYPE_1__*,char*) ;
 int init_test_struct (TYPE_1__*) ;
 int mmioFOURCC (char,char,char,char) ;
 int ok (int,char*,...) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 int testfilename ;

__attribute__((used)) static void test_amh_corruption(void)
{
    COMMON_AVI_HEADERS cah;
    char filename[MAX_PATH];
    PAVIFILE pFile;
    int res;

    GetTempPathA(MAX_PATH, filename);
    strcpy(filename+strlen(filename), testfilename);


    init_test_struct(&cah);
    cah.fh[3] = mmioFOURCC('A', 'V', 'i', ' ');

    create_avi_file(&cah, filename);
    res = AVIFileOpenA(&pFile, filename, OF_SHARE_DENY_WRITE, 0L);
    ok(res != 0, "Able to open file: error=%u\n", res);

    ok(DeleteFileA(filename) !=0, "Deleting file %s failed\n", filename);
}
