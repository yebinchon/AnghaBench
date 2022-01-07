
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_v2 {int is_boundary; } ;
struct graph_row {size_t size; struct graph_column* columns; } ;
struct TYPE_2__ {int boundary; } ;
struct graph_column {char const* id; TYPE_1__ symbol; } ;


 char* intern_string (char const*) ;
 int memmove (struct graph_column*,struct graph_column*,int) ;
 int memset (struct graph_column*,int ,int) ;
 int realloc_graph_columns (struct graph_column**,size_t,int) ;

__attribute__((used)) static struct graph_column *
graph_insert_column(struct graph_v2 *graph, struct graph_row *row, size_t pos, const char *id)
{
 struct graph_column *column;

 if (!realloc_graph_columns(&row->columns, row->size, 1))
  return ((void*)0);

 column = &row->columns[pos];
 if (pos < row->size) {
  memmove(column + 1, column, sizeof(*column) * (row->size - pos));
 }

 id = intern_string(id);

 row->size++;
 memset(column, 0, sizeof(*column));
 column->id = id;
 column->symbol.boundary = !!graph->is_boundary;

 return column;
}
