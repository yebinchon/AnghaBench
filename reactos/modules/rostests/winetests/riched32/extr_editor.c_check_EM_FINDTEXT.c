
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct find_s {int expected_loc; int flags; int end; int start; int needle; } ;
typedef int ft ;
struct TYPE_4__ {int cpMax; int cpMin; } ;
struct TYPE_5__ {int lpstrText; TYPE_1__ chrg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_2__ FINDTEXTA ;


 int EM_FINDTEXT ;
 int SendMessageA (int ,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,char const*,int,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static void check_EM_FINDTEXT(HWND hwnd, const char *name, struct find_s *f, int id) {
  int findloc;
  FINDTEXTA ft;
  memset(&ft, 0, sizeof(ft));
  ft.chrg.cpMin = f->start;
  ft.chrg.cpMax = f->end;
  ft.lpstrText = f->needle;
  findloc = SendMessageA(hwnd, EM_FINDTEXT, f->flags, (LPARAM)&ft);
  ok(findloc == f->expected_loc,
     "EM_FINDTEXT(%s,%d) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\n",
     name, id, f->needle, f->start, f->end, f->flags, findloc, f->expected_loc);
}
