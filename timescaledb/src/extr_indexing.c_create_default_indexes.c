
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int column_name; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_12__ {int ordering; int name; int type; int expr; } ;
typedef TYPE_2__ IndexElem ;
typedef int Hypertable ;
typedef TYPE_3__ Dimension ;


 int NameStr (int ) ;
 int SORTBY_ASC ;
 int SORTBY_DESC ;
 int T_IndexElem ;
 int create_default_index (int *,int ) ;
 int get_open_dim_expr (TYPE_3__*) ;
 int get_open_dim_name (TYPE_3__*) ;
 int list_make1 (TYPE_2__*) ;
 int list_make2 (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
create_default_indexes(Hypertable *ht, Dimension *time_dim, Dimension *space_dim, bool has_time_idx,
        bool has_time_space_idx)
{
 IndexElem telem = {
  .type = T_IndexElem,
  .name = get_open_dim_name(time_dim),
  .ordering = SORTBY_DESC,
  .expr = get_open_dim_expr(time_dim),
 };


 if (((void*)0) == time_dim)
  return;


 if (!has_time_idx)
  create_default_index(ht, list_make1(&telem));


 if (space_dim != ((void*)0) && !has_time_space_idx)
 {
  IndexElem selem = {
   .type = T_IndexElem,
   .name = NameStr(space_dim->fd.column_name),
   .ordering = SORTBY_ASC,
  };

  create_default_index(ht, list_make2(&selem, &telem));
 }
}
