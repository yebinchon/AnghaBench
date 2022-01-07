
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct directory_entry {int de_flags; int total_rr_attr_size; int rr_attributes; struct directory_entry* parent_rec; TYPE_2__* filedir; } ;
struct directory {int extent; TYPE_1__* contents; struct directory* next; struct directory_entry* self; } ;
struct dir_extent_link {struct dir_extent_link* next; struct directory_entry* de; } ;
struct TYPE_6__ {struct directory* subdir; } ;
struct TYPE_5__ {int extent; } ;
struct TYPE_4__ {struct directory_entry* next; } ;


 int EX_BAD ;
 int INHIBIT_ISO9660_ENTRY ;
 int _ (char*) ;
 struct dir_extent_link* cl_dirs ;
 int comerrno (int ,int ) ;
 char* find_rr_attribute (int ,int ,char*) ;
 int free (struct dir_extent_link*) ;
 struct dir_extent_link* re_dirs ;
 TYPE_3__* reloc_dir ;
 int set_733 (char*,int ) ;

void
finish_cl_pl_for_prev_session()
{
 struct dir_extent_link *re = re_dirs;


 re = re_dirs;
 for (; re; re = re->next) {
  if (re->de != ((void*)0)) {




   struct directory_entry *s_entry = re->de;
   struct directory_entry *s_entry1;
   struct directory *d_entry = reloc_dir->subdir;


   if (s_entry->de_flags & INHIBIT_ISO9660_ENTRY) {
    continue;
   }
   while (d_entry) {
    if (d_entry->self == s_entry)
     break;
    d_entry = d_entry->next;
   }
   if (!d_entry) {
    comerrno(EX_BAD, _("Unable to locate directory parent\n"));
   }

   if (s_entry->filedir != ((void*)0) && s_entry->parent_rec != ((void*)0)) {
    char *rr_attr;





    s_entry1 = d_entry->contents->next;
    rr_attr = find_rr_attribute(s_entry1->rr_attributes,
     s_entry1->total_rr_attr_size, "PL");
    if (rr_attr != ((void*)0))
     set_733(rr_attr + 4, s_entry->filedir->extent);


    s_entry1 = s_entry->parent_rec;

    rr_attr = find_rr_attribute(s_entry1->rr_attributes,
     s_entry1->total_rr_attr_size, "CL");
    if (rr_attr != ((void*)0))
     set_733(rr_attr + 4, d_entry->extent);
   }
  }
 }

 re = re_dirs;
 while (re) {
  struct dir_extent_link *next = re->next;

  free(re);
  re = next;
 }
 re = cl_dirs;
 while (re) {
  struct dir_extent_link *next = re->next;

  free(re);
  re = next;
 }
}
