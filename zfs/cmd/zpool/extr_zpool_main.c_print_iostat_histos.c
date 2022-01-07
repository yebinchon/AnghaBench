
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat_array {int dummy; } ;
typedef int nvlist_t ;
struct TYPE_5__ {int cb_namewidth; scalar_t__ cb_scripted; int cb_flags; scalar_t__ cb_literal; } ;
typedef TYPE_1__ iostat_cbdata_t ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;


 size_t IOS_HISTO_IDX (int ) ;
 unsigned int MAX (int,unsigned int) ;
 struct stat_array* calc_and_alloc_stats_ex (char const**,unsigned int,int *,int *) ;
 int free_calc_stats (struct stat_array*,unsigned int) ;
 int * histo_to_title ;
 int * iostat_bottom_labels ;
 unsigned int label_array_len (int ) ;
 scalar_t__ log10 (int ) ;
 int print_iostat_header_impl (TYPE_1__*,unsigned int,char const*) ;
 int print_iostat_histo (struct stat_array*,unsigned int,TYPE_1__*,unsigned int,unsigned int,double) ;
 int print_solid_separator (unsigned int) ;
 int printf (char*,char const*) ;
 int stat_histo_max (struct stat_array*,unsigned int) ;
 unsigned int str_array_len (char const**) ;
 unsigned int strlen (int ) ;
 char*** vsx_type_to_nvlist ;

__attribute__((used)) static void
print_iostat_histos(iostat_cbdata_t *cb, nvlist_t *oldnv,
    nvlist_t *newnv, double scale, const char *name)
{
 unsigned int column_width;
 unsigned int namewidth;
 unsigned int entire_width;
 enum iostat_type type;
 struct stat_array *nva;
 const char **names;
 unsigned int names_len;


 type = IOS_HISTO_IDX(cb->cb_flags);


 names = vsx_type_to_nvlist[type];
 names_len = str_array_len(names);

 nva = calc_and_alloc_stats_ex(names, names_len, oldnv, newnv);

 if (cb->cb_literal) {
  column_width = MAX(5,
      (unsigned int) log10(stat_histo_max(nva, names_len)) + 1);
 } else {
  column_width = 5;
 }

 namewidth = MAX(cb->cb_namewidth,
     strlen(histo_to_title[IOS_HISTO_IDX(cb->cb_flags)]));
 entire_width = namewidth + (column_width + 2) *
     label_array_len(iostat_bottom_labels[type]);

 if (cb->cb_scripted)
  printf("%s\n", name);
 else
  print_iostat_header_impl(cb, column_width, name);

 print_iostat_histo(nva, names_len, cb, column_width,
     namewidth, scale);

 free_calc_stats(nva, names_len);
 if (!cb->cb_scripted)
  print_solid_separator(entire_width);
}
