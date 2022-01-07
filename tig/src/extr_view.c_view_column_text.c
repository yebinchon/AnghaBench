
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct view_column_data {char* commit_title; char* file_name; char* reflog; char* id; char* text; TYPE_10__* section; int * status; int * mode; int * file_size; TYPE_3__* ref; int date; int author; } ;
struct TYPE_17__ {int display; } ;
struct TYPE_16__ {int display; } ;
struct TYPE_15__ {int display; } ;
struct TYPE_13__ {int format; int local; int display; } ;
struct TYPE_12__ {int display; int width; } ;
struct TYPE_18__ {TYPE_6__ status; TYPE_5__ id; TYPE_4__ file_size; TYPE_2__ date; TYPE_1__ author; } ;
struct view_column {int type; TYPE_7__ opt; } ;
struct view {int dummy; } ;
struct TYPE_19__ {char* text; } ;
struct TYPE_20__ {TYPE_8__ section; } ;
struct TYPE_14__ {char* name; } ;
struct TYPE_11__ {TYPE_9__ opt; } ;
 char* mkauthor (int ,int ,int ) ;
 char* mkdate (int ,int ,int ,int ) ;
 char* mkfilesize (int ,int ) ;
 char* mkmode (int ) ;
 char* mkstatus (int ,int ) ;

__attribute__((used)) static const char *
view_column_text(struct view *view, struct view_column_data *column_data,
   struct view_column *column)
{
 const char *text = "";

 switch (column->type) {
 case 139:
  if (column_data->author)
   text = mkauthor(column_data->author, column->opt.author.width, column->opt.author.display);
  break;

 case 138:
  text = column_data->commit_title;
  break;

 case 137:
  if (column_data->date)
   text = mkdate(column_data->date, column->opt.date.display,
          column->opt.date.local, column->opt.date.format);
  break;

 case 131:
  if (column_data->ref)
   text = column_data->ref->name;
  break;

 case 136:
  if (column_data->file_name)
   text = column_data->file_name;
  break;

 case 135:
  if (column_data->file_size)
   text = mkfilesize(*column_data->file_size, column->opt.file_size.display);
  break;

 case 134:
  if (column->opt.id.display)
   text = column_data->reflog ? column_data->reflog : column_data->id;
  break;

 case 133:
  break;

 case 132:
  if (column_data->mode)
   text = mkmode(*column_data->mode);
  break;

 case 129:
  if (column_data->status)
   text = mkstatus(*column_data->status, column->opt.status.display);
  break;

 case 130:
  text = column_data->section->opt.section.text;
  break;

 case 128:
  text = column_data->text;
  break;
 }

 return text ? text : "";
}
