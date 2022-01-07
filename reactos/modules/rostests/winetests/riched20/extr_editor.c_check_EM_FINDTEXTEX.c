
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct find_s {int expected_loc; int flags; int end; int start; scalar_t__ needle; } ;
typedef int ftw ;
typedef int fta ;
struct TYPE_7__ {int cpMin; int cpMax; } ;
struct TYPE_6__ {int cpMax; int cpMin; } ;
struct TYPE_8__ {TYPE_2__ chrgText; scalar_t__ lpstrText; TYPE_1__ chrg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ FINDTEXTEXW ;
typedef TYPE_3__ FINDTEXTEXA ;
typedef scalar_t__ BOOL ;


 int EM_FINDTEXTEX ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int SendMessageA (int ,int ,int ,int ) ;
 scalar_t__ atowstr (scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 int ok (int,char*,char const*,int,scalar_t__,int ,int ,int ,int,...) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void check_EM_FINDTEXTEX(HWND hwnd, const char *name, struct find_s *f,
    int id, BOOL unicode)
{
  int findloc;
  int expected_end_loc;

  if(unicode){
      FINDTEXTEXW ftw;
      memset(&ftw, 0, sizeof(ftw));
      ftw.chrg.cpMin = f->start;
      ftw.chrg.cpMax = f->end;
      ftw.lpstrText = atowstr(f->needle);
      findloc = SendMessageA(hwnd, EM_FINDTEXTEX, f->flags, (LPARAM)&ftw);
      ok(findloc == f->expected_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\n",
          name, id, f->needle, f->start, f->end, f->flags, findloc);
      ok(ftw.chrgText.cpMin == f->expected_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\n",
          name, id, f->needle, f->start, f->end, f->flags, ftw.chrgText.cpMin);
      expected_end_loc = ((f->expected_loc == -1) ? -1
            : f->expected_loc + strlen(f->needle));
      ok(ftw.chrgText.cpMax == expected_end_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, end at %d, expected %d\n",
          name, id, f->needle, f->start, f->end, f->flags, ftw.chrgText.cpMax, expected_end_loc);
      HeapFree(GetProcessHeap(), 0, (void*)ftw.lpstrText);
  }else{
      FINDTEXTEXA fta;
      memset(&fta, 0, sizeof(fta));
      fta.chrg.cpMin = f->start;
      fta.chrg.cpMax = f->end;
      fta.lpstrText = f->needle;
      findloc = SendMessageA(hwnd, EM_FINDTEXTEX, f->flags, (LPARAM)&fta);
      ok(findloc == f->expected_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\n",
          name, id, f->needle, f->start, f->end, f->flags, findloc);
      ok(fta.chrgText.cpMin == f->expected_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\n",
          name, id, f->needle, f->start, f->end, f->flags, fta.chrgText.cpMin);
      expected_end_loc = ((f->expected_loc == -1) ? -1
            : f->expected_loc + strlen(f->needle));
      ok(fta.chrgText.cpMax == expected_end_loc,
          "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, end at %d, expected %d\n",
          name, id, f->needle, f->start, f->end, f->flags, fta.chrgText.cpMax, expected_end_loc);
  }
}
