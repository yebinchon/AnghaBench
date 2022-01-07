
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ depth; scalar_t__ type; char* text; scalar_t__ locked; scalar_t__ selected; } ;
typedef TYPE_1__ pdf_layer_config_ui ;
struct TYPE_6__ {char* name; char* creator; } ;
typedef TYPE_2__ pdf_layer_config ;
typedef int pdf_document ;
typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ PDF_LAYER_UI_CHECKBOX ;
 scalar_t__ PDF_LAYER_UI_LABEL ;
 scalar_t__ PDF_LAYER_UI_RADIOBOX ;
 int fprintf (int ,char*,...) ;
 int fz_atoi (char const*) ;
 int fz_warn (int *,char*) ;
 scalar_t__ iswhite (char const) ;
 int pdf_count_layer_config_ui (int *,int *) ;
 int pdf_count_layer_configs (int *,int *) ;
 int pdf_layer_config_info (int *,int *,int,TYPE_2__*) ;
 int pdf_layer_config_ui_info (int *,int *,int,TYPE_1__*) ;
 int pdf_select_layer_config (int *,int *,int) ;
 int * pdf_specifics (int *,int *) ;
 int pdf_toggle_layer_config_ui (int *,int *,int) ;
 int stderr ;

__attribute__((used)) static void apply_layer_config(fz_context *ctx, fz_document *doc, const char *lc)
{
}
