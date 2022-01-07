
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ top; scalar_t__ right; scalar_t__ bottom; scalar_t__ left; } ;
struct sway_workspace {scalar_t__ gaps_inner; TYPE_2__ gaps_outer; } ;
struct TYPE_3__ {scalar_t__ left; scalar_t__ bottom; scalar_t__ right; scalar_t__ top; } ;
struct gaps_data {int amount; int operation; TYPE_1__ outer; scalar_t__ inner; } ;


 int apply_gaps_op (scalar_t__*,int ,int ) ;
 int arrange_workspace (struct sway_workspace*) ;
 int prevent_invalid_outer_gaps () ;

__attribute__((used)) static void configure_gaps(struct sway_workspace *ws, void *_data) {

 struct gaps_data *data = _data;
 if (data->inner) {
  apply_gaps_op(&ws->gaps_inner, data->operation, data->amount);
 }
 if (data->outer.top) {
  apply_gaps_op(&(ws->gaps_outer.top), data->operation, data->amount);
 }
 if (data->outer.right) {
  apply_gaps_op(&(ws->gaps_outer.right), data->operation, data->amount);
 }
 if (data->outer.bottom) {
  apply_gaps_op(&(ws->gaps_outer.bottom), data->operation, data->amount);
 }
 if (data->outer.left) {
  apply_gaps_op(&(ws->gaps_outer.left), data->operation, data->amount);
 }


 if (ws->gaps_inner < 0) {
  ws->gaps_inner = 0;
 }
 prevent_invalid_outer_gaps();
 arrange_workspace(ws);
}
