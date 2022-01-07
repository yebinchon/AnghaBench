
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_10__ {int* space; scalar_t__ instate; TYPE_2__* input; int userData; TYPE_1__* sax; } ;
struct TYPE_9__ {int line; int col; int* cur; } ;
struct TYPE_8__ {int (* characters ) (int ,int const*,int) ;int (* ignorableWhitespace ) (int ,int const*,int) ;} ;


 int GROW ;
 scalar_t__ IS_BLANK_CH (int const) ;
 int SHRINK ;
 int XML_ERR_MISPLACED_CDATA_END ;
 scalar_t__ XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ areBlanks (TYPE_3__*,int const*,int,int) ;
 int stub1 (int ,int const*,int) ;
 int stub2 (int ,int const*,int) ;
 int stub3 (int ,int const*,int) ;
 int stub4 (int ,int const*,int) ;
 int stub5 (int ,int const*,int) ;
 int stub6 (int ,int const*,int) ;
 scalar_t__* test_char_data ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlParseCharDataComplex (TYPE_3__*,int) ;

void
xmlParseCharData(xmlParserCtxtPtr ctxt, int cdata) {
    const xmlChar *in;
    int nbchar = 0;
    int line = ctxt->input->line;
    int col = ctxt->input->col;
    int ccol;

    SHRINK;
    GROW;




    if (!cdata) {
 in = ctxt->input->cur;
 do {
get_more_space:
     while (*in == 0x20) { in++; ctxt->input->col++; }
     if (*in == 0xA) {
  do {
      ctxt->input->line++; ctxt->input->col = 1;
      in++;
  } while (*in == 0xA);
  goto get_more_space;
     }
     if (*in == '<') {
  nbchar = in - ctxt->input->cur;
  if (nbchar > 0) {
      const xmlChar *tmp = ctxt->input->cur;
      ctxt->input->cur = in;

      if ((ctxt->sax != ((void*)0)) &&
          (ctxt->sax->ignorableWhitespace !=
           ctxt->sax->characters)) {
   if (areBlanks(ctxt, tmp, nbchar, 1)) {
       if (ctxt->sax->ignorableWhitespace != ((void*)0))
    ctxt->sax->ignorableWhitespace(ctxt->userData,
             tmp, nbchar);
   } else {
       if (ctxt->sax->characters != ((void*)0))
    ctxt->sax->characters(ctxt->userData,
            tmp, nbchar);
       if (*ctxt->space == -1)
           *ctxt->space = -2;
   }
      } else if ((ctxt->sax != ((void*)0)) &&
                 (ctxt->sax->characters != ((void*)0))) {
   ctxt->sax->characters(ctxt->userData,
           tmp, nbchar);
      }
  }
  return;
     }

get_more:
            ccol = ctxt->input->col;
     while (test_char_data[*in]) {
  in++;
  ccol++;
     }
     ctxt->input->col = ccol;
     if (*in == 0xA) {
  do {
      ctxt->input->line++; ctxt->input->col = 1;
      in++;
  } while (*in == 0xA);
  goto get_more;
     }
     if (*in == ']') {
  if ((in[1] == ']') && (in[2] == '>')) {
      xmlFatalErr(ctxt, XML_ERR_MISPLACED_CDATA_END, ((void*)0));
      ctxt->input->cur = in + 1;
      return;
  }
  in++;
  ctxt->input->col++;
  goto get_more;
     }
     nbchar = in - ctxt->input->cur;
     if (nbchar > 0) {
  if ((ctxt->sax != ((void*)0)) &&
      (ctxt->sax->ignorableWhitespace !=
       ctxt->sax->characters) &&
      (IS_BLANK_CH(*ctxt->input->cur))) {
      const xmlChar *tmp = ctxt->input->cur;
      ctxt->input->cur = in;

      if (areBlanks(ctxt, tmp, nbchar, 0)) {
          if (ctxt->sax->ignorableWhitespace != ((void*)0))
       ctxt->sax->ignorableWhitespace(ctxt->userData,
          tmp, nbchar);
      } else {
          if (ctxt->sax->characters != ((void*)0))
       ctxt->sax->characters(ctxt->userData,
        tmp, nbchar);
   if (*ctxt->space == -1)
       *ctxt->space = -2;
      }
                    line = ctxt->input->line;
                    col = ctxt->input->col;
  } else if (ctxt->sax != ((void*)0)) {
      if (ctxt->sax->characters != ((void*)0))
   ctxt->sax->characters(ctxt->userData,
           ctxt->input->cur, nbchar);
                    line = ctxt->input->line;
                    col = ctxt->input->col;
  }

                if (ctxt->instate != XML_PARSER_CONTENT)
                    return;
     }
     ctxt->input->cur = in;
     if (*in == 0xD) {
  in++;
  if (*in == 0xA) {
      ctxt->input->cur = in;
      in++;
      ctxt->input->line++; ctxt->input->col = 1;
      continue;
  }
  in--;
     }
     if (*in == '<') {
  return;
     }
     if (*in == '&') {
  return;
     }
     SHRINK;
     GROW;
            if (ctxt->instate == XML_PARSER_EOF)
  return;
     in = ctxt->input->cur;
 } while (((*in >= 0x20) && (*in <= 0x7F)) || (*in == 0x09));
 nbchar = 0;
    }
    ctxt->input->line = line;
    ctxt->input->col = col;
    xmlParseCharDataComplex(ctxt, cdata);
}
