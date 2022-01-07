
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int file_len; int* ofs_list; int start; int main_xref_offset; int* use_list; int page_count; int hints_shared_offset; TYPE_1__* page_object_lists; } ;
typedef TYPE_2__ pdf_write_state ;
typedef int pdf_document ;
struct TYPE_7__ {int num_objects; int min_ofs; int max_ofs; int len; size_t* object; int num_shared; size_t page_object_number; } ;
typedef TYPE_3__ page_objects ;
typedef int int64_t ;
typedef int fz_context ;
typedef int fz_buffer ;
struct TYPE_5__ {TYPE_3__** page; } ;


 int USE_CATALOGUE ;
 int USE_HINTS ;
 int USE_PAGE1 ;
 int USE_PAGE_SHIFT ;
 int USE_PARAMS ;
 int USE_SHARED ;
 int assert (int) ;
 int fz_append_bits (int *,int *,int,int) ;
 int fz_append_bits_pad (int *,int *) ;
 scalar_t__ fz_buffer_storage (int *,int *,int *) ;
 int my_log2 (int) ;
 int pdf_xref_len (int *,int *) ;

__attribute__((used)) static void
make_page_offset_hints(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, fz_buffer *buf)
{
 int i, j;
 int min_objs_per_page, max_objs_per_page;
 int min_page_length, max_page_length;
 int objs_per_page_bits;
 int min_shared_object, max_shared_object;
 int max_shared_object_refs = 0;
 int min_shared_length, max_shared_length;
 page_objects **pop = &opts->page_object_lists->page[0];
 int page_len_bits, shared_object_bits, shared_object_id_bits;
 int shared_length_bits;
 int xref_len = pdf_xref_len(ctx, doc);

 min_shared_object = pdf_xref_len(ctx, doc);
 max_shared_object = 1;
 min_shared_length = opts->file_len;
 max_shared_length = 0;
 for (i=1; i < xref_len; i++)
 {
  int min, max, page;

  min = opts->ofs_list[i];
  if (i == opts->start-1 || (opts->start == 1 && i == xref_len-1))
   max = opts->main_xref_offset;
  else if (i == xref_len-1)
   max = opts->ofs_list[1];
  else
   max = opts->ofs_list[i+1];

  assert(max > min);

  if (opts->use_list[i] & USE_SHARED)
  {
   page = -1;
   if (i < min_shared_object)
    min_shared_object = i;
   if (i > max_shared_object)
    max_shared_object = i;
   if (min_shared_length > max - min)
    min_shared_length = max - min;
   if (max_shared_length < max - min)
    max_shared_length = max - min;
  }
  else if (opts->use_list[i] & (USE_CATALOGUE | USE_HINTS | USE_PARAMS))
   page = -1;
  else if (opts->use_list[i] & USE_PAGE1)
  {
   page = 0;
   if (min_shared_length > max - min)
    min_shared_length = max - min;
   if (max_shared_length < max - min)
    max_shared_length = max - min;
  }
  else if (opts->use_list[i] == 0)
   page = -1;
  else
   page = opts->use_list[i]>>USE_PAGE_SHIFT;

  if (page >= 0)
  {
   pop[page]->num_objects++;
   if (pop[page]->min_ofs > min)
    pop[page]->min_ofs = min;
   if (pop[page]->max_ofs < max)
    pop[page]->max_ofs = max;
  }
 }

 min_objs_per_page = max_objs_per_page = pop[0]->num_objects;
 min_page_length = max_page_length = pop[0]->max_ofs - pop[0]->min_ofs;
 for (i=1; i < opts->page_count; i++)
 {
  int tmp;
  if (min_objs_per_page > pop[i]->num_objects)
   min_objs_per_page = pop[i]->num_objects;
  if (max_objs_per_page < pop[i]->num_objects)
   max_objs_per_page = pop[i]->num_objects;
  tmp = pop[i]->max_ofs - pop[i]->min_ofs;
  if (tmp < min_page_length)
   min_page_length = tmp;
  if (tmp > max_page_length)
   max_page_length = tmp;
 }

 for (i=0; i < opts->page_count; i++)
 {
  int count = 0;
  page_objects *po = opts->page_object_lists->page[i];
  for (j = 0; j < po->len; j++)
  {
   if (i == 0 && opts->use_list[po->object[j]] & USE_PAGE1)
    count++;
   else if (i != 0 && opts->use_list[po->object[j]] & USE_SHARED)
    count++;
  }
  po->num_shared = count;
  if (i == 0 || count > max_shared_object_refs)
   max_shared_object_refs = count;
 }
 if (min_shared_object > max_shared_object)
  min_shared_object = max_shared_object = 0;



 fz_append_bits(ctx, buf, min_objs_per_page, 32);

 fz_append_bits(ctx, buf, opts->ofs_list[pop[0]->page_object_number], 32);


 objs_per_page_bits = my_log2(max_objs_per_page - min_objs_per_page);
 fz_append_bits(ctx, buf, objs_per_page_bits, 16);

 fz_append_bits(ctx, buf, min_page_length, 32);


 page_len_bits = my_log2(max_page_length - min_page_length);
 fz_append_bits(ctx, buf, page_len_bits, 16);


 fz_append_bits(ctx, buf, 0, 32);



 fz_append_bits(ctx, buf, 0, 16);


 fz_append_bits(ctx, buf, 0, 32);



 fz_append_bits(ctx, buf, page_len_bits, 16);


 shared_object_bits = my_log2(max_shared_object_refs);
 fz_append_bits(ctx, buf, shared_object_bits, 16);


 shared_object_id_bits = my_log2(max_shared_object - min_shared_object + pop[0]->num_shared);
 fz_append_bits(ctx, buf, shared_object_id_bits, 16);


 fz_append_bits(ctx, buf, 0, 16);


 fz_append_bits(ctx, buf, 0, 16);




 for (i = 0; i < opts->page_count; i++)
 {
  fz_append_bits(ctx, buf, pop[i]->num_objects - min_objs_per_page, objs_per_page_bits);
 }
 fz_append_bits_pad(ctx, buf);


 for (i = 0; i < opts->page_count; i++)
 {
  fz_append_bits(ctx, buf, pop[i]->max_ofs - pop[i]->min_ofs - min_page_length, page_len_bits);
 }
 fz_append_bits_pad(ctx, buf);

 for (i = 0; i < opts->page_count; i++)
 {
  fz_append_bits(ctx, buf, pop[i]->num_shared, shared_object_bits);
 }
 fz_append_bits_pad(ctx, buf);



 for (i = 0; i < opts->page_count; i++)
 {
  for (j = 0; j < pop[i]->len; j++)
  {
   int o = pop[i]->object[j];
   if (i == 0 && opts->use_list[o] & USE_PAGE1)
    fz_append_bits(ctx, buf, 0 , shared_object_id_bits);
   if (i != 0 && opts->use_list[o] & USE_SHARED)
    fz_append_bits(ctx, buf, o - min_shared_object + pop[0]->num_shared, shared_object_id_bits);
  }
 }
 fz_append_bits_pad(ctx, buf);
 for (i = 0; i < opts->page_count; i++)
 {
  fz_append_bits(ctx, buf, pop[i]->max_ofs - pop[i]->min_ofs - min_page_length, page_len_bits);
 }


 fz_append_bits_pad(ctx, buf);
 opts->hints_shared_offset = (int)fz_buffer_storage(ctx, buf, ((void*)0));




 fz_append_bits(ctx, buf, min_shared_object, 32);


 fz_append_bits(ctx, buf, opts->ofs_list[min_shared_object], 32);


 fz_append_bits(ctx, buf, pop[0]->num_shared, 32);


 fz_append_bits(ctx, buf, max_shared_object - min_shared_object + pop[0]->num_shared, 32);


 fz_append_bits(ctx, buf, 0, 16);

 fz_append_bits(ctx, buf, min_shared_length, 32);



 shared_length_bits = my_log2(max_shared_length - min_shared_length);
 fz_append_bits(ctx, buf, shared_length_bits, 16);



 for (j = 0; j < pop[0]->len; j++)
 {
  int o = pop[0]->object[j];
  int64_t min, max;
  min = opts->ofs_list[o];
  if (o == opts->start-1)
   max = opts->main_xref_offset;
  else if (o < xref_len-1)
   max = opts->ofs_list[o+1];
  else
   max = opts->ofs_list[1];
  if (opts->use_list[o] & USE_PAGE1)
   fz_append_bits(ctx, buf, max - min - min_shared_length, shared_length_bits);
 }

 for (i = min_shared_object; i <= max_shared_object; i++)
 {
  int min, max;
  min = opts->ofs_list[i];
  if (i == opts->start-1)
   max = opts->main_xref_offset;
  else if (i < xref_len-1)
   max = opts->ofs_list[i+1];
  else
   max = opts->ofs_list[1];
  fz_append_bits(ctx, buf, max - min - min_shared_length, shared_length_bits);
 }
 fz_append_bits_pad(ctx, buf);


 for (i = max_shared_object - min_shared_object + pop[0]->num_shared; i > 0; i--)
 {
  fz_append_bits(ctx, buf, 0, 1);
 }
 fz_append_bits_pad(ctx, buf);

 fz_append_bits_pad(ctx, buf);

}
