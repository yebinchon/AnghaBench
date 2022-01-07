
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct find_s {int expected_loc; int flags; int end; int start; scalar_t__ needle; } ;
typedef int ftw ;
typedef int fta ;
struct TYPE_5__ {int cpMax; int cpMin; } ;
struct TYPE_6__ {scalar_t__ lpstrText; TYPE_1__ chrg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_2__ FINDTEXTW ;
typedef TYPE_2__ FINDTEXTA ;
typedef int BOOL ;


 int EM_FINDTEXT ;
 int EM_FINDTEXTW ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int SendMessageA (int ,int ,int ,int ) ;
 scalar_t__ atowstr (scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,char const*,int,int ,scalar_t__,int ,int ,int ,int,int) ;

__attribute__((used)) static void check_EM_FINDTEXT(HWND hwnd, const char *name, struct find_s *f, int id, BOOL unicode)
{
  int findloc;

  if(unicode){
      FINDTEXTW ftw;
      memset(&ftw, 0, sizeof(ftw));
      ftw.chrg.cpMin = f->start;
      ftw.chrg.cpMax = f->end;
      ftw.lpstrText = atowstr(f->needle);

      findloc = SendMessageA(hwnd, EM_FINDTEXT, f->flags, (LPARAM)&ftw);
      ok(findloc == f->expected_loc,
         "EM_FINDTEXT(%s,%d,%u) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\n",
         name, id, unicode, f->needle, f->start, f->end, f->flags, findloc, f->expected_loc);

      findloc = SendMessageA(hwnd, EM_FINDTEXTW, f->flags, (LPARAM)&ftw);
      ok(findloc == f->expected_loc,
         "EM_FINDTEXTW(%s,%d,%u) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\n",
         name, id, unicode, f->needle, f->start, f->end, f->flags, findloc, f->expected_loc);

      HeapFree(GetProcessHeap(), 0, (void*)ftw.lpstrText);
  }else{
      FINDTEXTA fta;
      memset(&fta, 0, sizeof(fta));
      fta.chrg.cpMin = f->start;
      fta.chrg.cpMax = f->end;
      fta.lpstrText = f->needle;

      findloc = SendMessageA(hwnd, EM_FINDTEXT, f->flags, (LPARAM)&fta);
      ok(findloc == f->expected_loc,
         "EM_FINDTEXT(%s,%d,%u) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\n",
         name, id, unicode, f->needle, f->start, f->end, f->flags, findloc, f->expected_loc);
  }
}
