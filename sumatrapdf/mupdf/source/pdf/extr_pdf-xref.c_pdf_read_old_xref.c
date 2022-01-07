
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int num; int ofs; int gen; int type; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef scalar_t__ pdf_token ;
typedef int pdf_obj ;
struct TYPE_14__ {char* scratch; int size; } ;
typedef TYPE_2__ pdf_lexbuf ;
struct TYPE_15__ {int has_old_style_xrefs; int * file; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int PDF_MAX_OBJECT_NUMBER ;
 scalar_t__ PDF_TOK_OPEN_DICT ;
 scalar_t__ PDF_TOK_TRAILER ;
 int SEEK_CUR ;
 int fz_atoi (int ) ;
 int fz_peek_byte (int *,int *) ;
 size_t fz_read (int *,int *,unsigned char*,int) ;
 int fz_read_line (int *,int *,char*,int ) ;
 int fz_seek (int *,int *,int,int ) ;
 int fz_skip_space (int *,int *) ;
 scalar_t__ fz_skip_string (int *,int *,char*) ;
 int fz_strsep (char**,char*) ;
 int fz_throw (int *,int ,char*,...) ;
 int fz_unread_byte (int *,int *) ;
 int fz_warn (int *,char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ iswhite (char) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_2__*) ;
 int * pdf_parse_dict (int *,TYPE_3__*,int *,TYPE_2__*) ;
 TYPE_1__* pdf_xref_find_subsection (int *,TYPE_3__*,int,int) ;
 int pdf_xref_size_from_old_trailer (int *,TYPE_3__*,TYPE_2__*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static pdf_obj *
pdf_read_old_xref(fz_context *ctx, pdf_document *doc, pdf_lexbuf *buf)
{
 int start, len, c, i, xref_len, carried;
 fz_stream *file = doc->file;
 pdf_xref_entry *table;
 pdf_token tok;
 size_t n;
 char *s, *e;

 xref_len = pdf_xref_size_from_old_trailer(ctx, doc, buf);

 fz_skip_space(ctx, doc->file);
 if (fz_skip_string(ctx, doc->file, "xref"))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find xref marker");
 fz_skip_space(ctx, doc->file);

 while (1)
 {
  c = fz_peek_byte(ctx, file);
  if (!isdigit(c))
   break;

  fz_read_line(ctx, file, buf->scratch, buf->size);
  s = buf->scratch;
  start = fz_atoi(fz_strsep(&s, " "));
  len = fz_atoi(fz_strsep(&s, " "));


  if (s && *s != '\0')
  {
   fz_warn(ctx, "broken xref subsection. proceeding anyway.");
   fz_seek(ctx, file, -(2 + (int)strlen(s)), SEEK_CUR);
  }

  if (start < 0 || start > PDF_MAX_OBJECT_NUMBER
    || len < 0 || len > PDF_MAX_OBJECT_NUMBER
    || start + len - 1 > PDF_MAX_OBJECT_NUMBER)
  {
   fz_throw(ctx, FZ_ERROR_GENERIC, "xref subsection object numbers are out of range");
  }

  if (start + len > xref_len)
  {
   fz_warn(ctx, "broken xref subsection, proceeding anyway.");
  }

  table = pdf_xref_find_subsection(ctx, doc, start, len);




  carried = 0;
  for (i = 0; i < len; i++)
  {
   pdf_xref_entry *entry = &table[i];
   n = fz_read(ctx, file, (unsigned char *) buf->scratch + carried, 20-carried);
   if (n != (size_t)(20-carried))
    fz_throw(ctx, FZ_ERROR_GENERIC, "unexpected EOF in xref table");
   n += carried;
   buf->scratch[n] = '\0';
   if (!entry->type)
   {
    s = buf->scratch;
    e = s + n;

    entry->num = start + i;


    while (s < e && iswhite(*s))
     s++;

    if (s == e || !isdigit(*s))
     fz_throw(ctx, FZ_ERROR_GENERIC, "xref offset missing");
    while (s < e && isdigit(*s))
     entry->ofs = entry->ofs * 10 + *s++ - '0';

    while (s < e && iswhite(*s))
     s++;
    if (s == e || !isdigit(*s))
     fz_throw(ctx, FZ_ERROR_GENERIC, "xref generation number missing");
    while (s < e && isdigit(*s))
     entry->gen = entry->gen * 10 + *s++ - '0';

    while (s < e && iswhite(*s))
     s++;
    if (s == e || (*s != 'f' && *s != 'n' && *s != 'o'))
     fz_throw(ctx, FZ_ERROR_GENERIC, "unexpected xref type: 0x%x (%d %d R)", s == e ? 0 : *s, entry->num, entry->gen);
    entry->type = *s++;


    carried = buf->scratch[19] > 32;
    if (carried)
     buf->scratch[0] = buf->scratch[19];
   }
  }
  if (carried)
   fz_unread_byte(ctx, file);
 }

 tok = pdf_lex(ctx, file, buf);
 if (tok != PDF_TOK_TRAILER)
  fz_throw(ctx, FZ_ERROR_GENERIC, "expected trailer marker");

 tok = pdf_lex(ctx, file, buf);
 if (tok != PDF_TOK_OPEN_DICT)
  fz_throw(ctx, FZ_ERROR_GENERIC, "expected trailer dictionary");

 doc->has_old_style_xrefs = 1;

 return pdf_parse_dict(ctx, doc, file, buf);
}
