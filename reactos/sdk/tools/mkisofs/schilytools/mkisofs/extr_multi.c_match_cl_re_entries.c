
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct directory_entry {struct directory_entry* next; int filedir; struct directory_entry* parent_rec; } ;
struct dir_extent_link {scalar_t__ extent; struct directory_entry* de; struct dir_extent_link* next; } ;
struct TYPE_2__ {struct directory_entry* contents; } ;


 struct dir_extent_link* cl_dirs ;
 struct dir_extent_link* re_dirs ;
 TYPE_1__* reloc_dir ;

void
match_cl_re_entries()
{
 struct dir_extent_link *re = re_dirs;


 for (; re; re = re->next) {
  struct dir_extent_link *cl = cl_dirs;

  for (; cl; cl = cl->next) {

   if (cl->extent == re->extent) {

    re->de->parent_rec = cl->de;
    re->de->filedir = cl->de->filedir;




    if (reloc_dir != ((void*)0)) {
     struct directory_entry *rr_moved_e = reloc_dir->contents;

     for (; rr_moved_e; rr_moved_e = rr_moved_e->next) {

      if (re->de == rr_moved_e) {

       re->de = ((void*)0);
      }
     }
    }
    break;
   }
  }
 }
}
