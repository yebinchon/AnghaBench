
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct find_s {int expected_loc; int flags; int end; int start; int needle; } ;
typedef int ft ;
struct TYPE_6__ {int cpMax; int cpMin; } ;
struct TYPE_5__ {int cpMax; int cpMin; } ;
struct TYPE_7__ {TYPE_2__ chrgText; int lpstrText; TYPE_1__ chrg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ FINDTEXTEXA ;


 int EM_FINDTEXTEX ;
 int SendMessageA (int ,int ,int ,int ) ;
 scalar_t__ broken (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int ok (int,char*,char const*,int,int ,int ,int ,int ,int,...) ;
 int strlen (int ) ;

__attribute__((used)) static void check_EM_FINDTEXTEX(HWND hwnd, const char *name, struct find_s *f,
    int id) {
  int findloc;
  FINDTEXTEXA ft;
  int expected_end_loc;

  memset(&ft, 0, sizeof(ft));
  ft.chrg.cpMin = f->start;
  ft.chrg.cpMax = f->end;
  ft.lpstrText = f->needle;
  ft.chrgText.cpMax = 0xdeadbeef;
  findloc = SendMessageA(hwnd, EM_FINDTEXTEX, f->flags, (LPARAM)&ft);
  ok(findloc == f->expected_loc,
      "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\n",
      name, id, f->needle, f->start, f->end, f->flags, findloc);
  ok(ft.chrgText.cpMin == f->expected_loc,
      "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d, expected %d\n",
      name, id, f->needle, f->start, f->end, f->flags, ft.chrgText.cpMin, f->expected_loc);
  expected_end_loc = ((f->expected_loc == -1) ? -1
        : f->expected_loc + strlen(f->needle));
  ok(ft.chrgText.cpMax == expected_end_loc ||
      broken(ft.chrgText.cpMin == -1 && ft.chrgText.cpMax == 0xdeadbeef),
      "EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, end at %d, expected %d\n",
      name, id, f->needle, f->start, f->end, f->flags, ft.chrgText.cpMax, expected_end_loc);
}
