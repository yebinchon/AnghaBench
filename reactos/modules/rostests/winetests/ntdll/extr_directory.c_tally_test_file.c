
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int attr; int nfound; scalar_t__ attr_done; int description; int name; } ;
struct TYPE_4__ {int FileAttributes; int FileNameLength; int * FileName; } ;
typedef TYPE_1__ FILE_BOTH_DIRECTORY_INFORMATION ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int FILE_ATTRIBUTE_SYSTEM ;
 scalar_t__ TRUE ;
 int lstrlenW (int ) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int ok (int,char*,int ,...) ;
 int test_dir_count ;
 TYPE_2__* testfiles ;
 int wine_dbgstr_w (int ) ;
 int wine_dbgstr_wn (int *,int) ;

__attribute__((used)) static void tally_test_file(FILE_BOTH_DIRECTORY_INFORMATION *dir_info)
{
    int i;
    DWORD attribmask =
      (FILE_ATTRIBUTE_SYSTEM|FILE_ATTRIBUTE_HIDDEN|FILE_ATTRIBUTE_DIRECTORY|FILE_ATTRIBUTE_REPARSE_POINT);
    DWORD attrib = dir_info->FileAttributes & attribmask;
    WCHAR *nameW = dir_info->FileName;
    int namelen = dir_info->FileNameLength / sizeof(WCHAR);

    for (i = 0; i < test_dir_count; i++) {
        int len = lstrlenW(testfiles[i].name);
        if (namelen != len || memcmp(nameW, testfiles[i].name, len*sizeof(WCHAR)))
            continue;
        if (!testfiles[i].attr_done) {
            ok (attrib == (testfiles[i].attr & attribmask), "file %s: expected %s (%x), got %x (is your linux new enough?)\n", wine_dbgstr_w(testfiles[i].name), testfiles[i].description, testfiles[i].attr, attrib);
            testfiles[i].attr_done = TRUE;
        }
        testfiles[i].nfound++;
        break;
    }
    ok(i < test_dir_count, "unexpected file found %s\n", wine_dbgstr_wn(dir_info->FileName, namelen));
}
