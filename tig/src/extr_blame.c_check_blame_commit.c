
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blame {TYPE_1__* commit; } ;
struct TYPE_2__ {int id; } ;


 int report (char*) ;
 scalar_t__ string_rev_is_null (int ) ;

__attribute__((used)) static bool
check_blame_commit(struct blame *blame, bool check_null_id)
{
 if (!blame->commit)
  report("Commit data not loaded yet");
 else if (check_null_id && string_rev_is_null(blame->commit->id))
  report("No commit exist for the selected line");
 else
  return 1;
 return 0;
}
