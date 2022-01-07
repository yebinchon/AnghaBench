
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int szPathName; } ;
typedef TYPE_1__ OFSTRUCT ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetFileAttributesW (int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LZClose (scalar_t__) ;
 scalar_t__ LZOpenFileW (int *,TYPE_1__*,int ) ;
 int OF_DELETE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void delete_fileW(WCHAR *fnameW)
{
  INT file;
  OFSTRUCT ofs;
  DWORD retval;

  file = LZOpenFileW(fnameW, &ofs, OF_DELETE);
  ok(file >= 0, "LZOpenFileW failed on delete\n");
  LZClose(file);
  retval = GetFileAttributesW(fnameW);
  ok(retval == INVALID_FILE_ATTRIBUTES, "GetFileAttributesW succeeded on deleted file ('%s')\n", ofs.szPathName);
}
