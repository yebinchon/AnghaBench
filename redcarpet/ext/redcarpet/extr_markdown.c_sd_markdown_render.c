
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {int (* doc_footer ) (struct buf*,int ) ;int (* doc_header ) (struct buf*,int ) ;} ;
struct sd_markdown {int ext_flags; TYPE_2__* work_bufs; int footnotes_used; int footnotes_found; int refs; int opaque; TYPE_1__ cb; } ;
struct buf {int size; char* data; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 size_t BUFFER_BLOCK ;
 size_t BUFFER_SPAN ;
 size_t MARKDOWN_GROW (int) ;
 int MKDEXT_FENCED_CODE ;
 int MKDEXT_FOOTNOTES ;
 int REF_TABLE_SIZE ;
 int assert (int) ;
 int bufcstr (struct buf*) ;
 int bufgrow (struct buf*,size_t) ;
 struct buf* bufnew (int) ;
 int bufputc (struct buf*,char) ;
 int bufrelease (struct buf*) ;
 int expand_tabs (struct buf*,char const*,size_t) ;
 int free_footnote_list (int *,int) ;
 int free_link_refs (int ) ;
 scalar_t__ is_codefence (char const*,size_t,int *) ;
 scalar_t__ is_footnote (char const*,size_t,size_t,size_t*,int *) ;
 scalar_t__ is_ref (char const*,size_t,size_t,size_t*,int ) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int memset (int *,int,int) ;
 int parse_block (struct buf*,struct sd_markdown*,char*,int) ;
 int parse_footnote_list (struct buf*,struct sd_markdown*,int *) ;
 int stub1 (struct buf*,int ) ;
 int stub2 (struct buf*,int ) ;

void
sd_markdown_render(struct buf *ob, const uint8_t *document, size_t doc_size, struct sd_markdown *md)
{

 static const char UTF8_BOM[] = {0xEF, 0xBB, 0xBF};

 struct buf *text;
 size_t beg, end;
 int in_fence = 0;

 text = bufnew(64);
 if (!text)
  return;


 bufgrow(text, doc_size);


 memset(&md->refs, 0x0, REF_TABLE_SIZE * sizeof(void *));

 int footnotes_enabled = md->ext_flags & MKDEXT_FOOTNOTES;
 int codefences_enabled = md->ext_flags & MKDEXT_FENCED_CODE;


 if (footnotes_enabled) {
  memset(&md->footnotes_found, 0x0, sizeof(md->footnotes_found));
  memset(&md->footnotes_used, 0x0, sizeof(md->footnotes_used));
 }


 beg = 0;



 if (doc_size >= 3 && memcmp(document, UTF8_BOM, 3) == 0)
  beg += 3;

 while (beg < doc_size) {
  if (codefences_enabled && (is_codefence(document + beg, doc_size - beg, ((void*)0)) != 0))
   in_fence = !in_fence;

  if (!in_fence && footnotes_enabled && is_footnote(document, beg, doc_size, &end, &md->footnotes_found))
   beg = end;
  else if (!in_fence && is_ref(document, beg, doc_size, &end, md->refs))
   beg = end;
  else {
   end = beg;
   while (end < doc_size && document[end] != '\n' && document[end] != '\r')
    end++;


   if (end > beg)
    expand_tabs(text, document + beg, end - beg);

   while (end < doc_size && (document[end] == '\n' || document[end] == '\r')) {

    if (document[end] == '\n' || (end + 1 < doc_size && document[end + 1] != '\n'))
     bufputc(text, '\n');
    end++;
   }

   beg = end;
  }
 }


 bufgrow(ob, ((text->size) + ((text->size) >> 1)));


 if (md->cb.doc_header)
  md->cb.doc_header(ob, md->opaque);

 if (text->size) {

  if (text->data[text->size - 1] != '\n' && text->data[text->size - 1] != '\r')
   bufputc(text, '\n');

  parse_block(ob, md, text->data, text->size);
 }


 if (footnotes_enabled)
  parse_footnote_list(ob, md, &md->footnotes_used);

 if (md->cb.doc_footer)
  md->cb.doc_footer(ob, md->opaque);


 bufcstr(ob);


 bufrelease(text);
 free_link_refs(md->refs);
 if (footnotes_enabled) {
  free_footnote_list(&md->footnotes_found, 1);
  free_footnote_list(&md->footnotes_used, 0);
 }

 assert(md->work_bufs[BUFFER_SPAN].size == 0);
 assert(md->work_bufs[BUFFER_BLOCK].size == 0);
}
