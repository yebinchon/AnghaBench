
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* szPathName; } ;
typedef TYPE_1__ OFSTRUCT ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetFileAttributesA (char*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LZClose (scalar_t__) ;
 scalar_t__ LZOpenFileA (char*,TYPE_1__*,int ) ;
 int OF_DELETE ;
 int ok (int,char*,char*) ;

__attribute__((used)) static void delete_file(char *fname)
{
  INT file;
  OFSTRUCT ofs;
  DWORD retval;

  file = LZOpenFileA(fname, &ofs, OF_DELETE);
  ok(file >= 0, "LZOpenFileA failed to delete '%s'\n", fname);
  LZClose(file);
  retval = GetFileAttributesA(fname);
  ok(retval == INVALID_FILE_ATTRIBUTES, "GetFileAttributesA succeeded on deleted file ('%s')\n", ofs.szPathName);
}
