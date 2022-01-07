
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view_column_data {int commit_title; TYPE_1__* ref; int id; int * date; int author; } ;
struct view {int dummy; } ;
struct reference {int title; TYPE_1__* ref; int time; int author; } ;
struct line {struct reference* data; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static bool
refs_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 const struct reference *reference = line->data;

 column_data->author = reference->author;
 column_data->date = &reference->time;
 column_data->id = reference->ref->id;
 column_data->ref = reference->ref;
 column_data->commit_title = reference->title;

 return 1;
}
