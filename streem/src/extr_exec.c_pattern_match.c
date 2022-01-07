
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_state ;
typedef int strm_int ;
struct TYPE_6__ {TYPE_3__* mid; scalar_t__ tail; scalar_t__ head; } ;
typedef TYPE_1__ node_psplat ;
struct TYPE_7__ {int len; TYPE_3__** data; } ;
typedef TYPE_2__ node_nodes ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_3__ node ;


 scalar_t__ NODE_PSPLAT ;
 int STRM_NG ;
 int STRM_OK ;
 int pmatch (int *,int *,TYPE_3__*,int ) ;
 int strm_ary_new (int *,int) ;

__attribute__((used)) static int
pattern_match(strm_stream* strm, strm_state* state, node* npat, int argc, strm_value* argv)
{
  node_nodes* pat = (node_nodes*)npat;
  int i;

  if (pat == ((void*)0)) return STRM_OK;
  if (npat->type == NODE_PSPLAT) {
    node_psplat* psp = (node_psplat*)pat;
    node_nodes* head = (node_nodes*)psp->head;
    node_nodes* tail = (node_nodes*)psp->tail;
    node* rest = psp->mid;
    strm_int hlen = head ? head->len : 0;

    if (argc < hlen) return STRM_NG;
    if (head) {
      if (pattern_match(strm, state, (node*)head, hlen, argv) == STRM_NG)
        return STRM_NG;
    }
    if (tail == ((void*)0)) {
      if (pmatch(strm, state, rest, strm_ary_new(argv+hlen, argc-hlen)) == STRM_NG)
        return STRM_NG;
    }
    else {
      if (argc < hlen+tail->len) return STRM_NG;
      if (pattern_match(strm, state, rest, argc-hlen-tail->len, argv+hlen) == STRM_NG)
        return STRM_NG;
      if (pattern_match(strm, state, (node*)tail, tail->len, argv+argc-tail->len) == STRM_NG)
        return STRM_NG;
    }
    return STRM_OK;
  }
  if (pat->len != argc) return STRM_NG;
  for (i=0; i<pat->len; i++) {
    if (pmatch(strm, state, pat->data[i], argv[i]) == STRM_NG)
      return STRM_NG;
  }
  return STRM_OK;
}
