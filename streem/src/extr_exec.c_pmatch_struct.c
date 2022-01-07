
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct strm_array {scalar_t__ len; int * ptr; int headers; } ;
typedef scalar_t__ strm_value ;
typedef scalar_t__ strm_string ;
typedef int strm_stream ;
typedef int strm_state ;
typedef int strm_int ;
typedef int strm_array ;
struct TYPE_3__ {scalar_t__ type; int value; int key; } ;
typedef TYPE_1__ node_pair ;
struct TYPE_4__ {scalar_t__ len; scalar_t__* data; } ;
typedef TYPE_2__ node_nodes ;
typedef int node ;


 scalar_t__ NODE_PAIR ;
 int STRM_NG ;
 int STRM_OK ;
 int assert (int) ;
 scalar_t__ node_to_sym (int ) ;
 int pmatch (int *,int *,int ,int ) ;
 scalar_t__* strm_ary_ptr (int ) ;
 struct strm_array* strm_ary_struct (int ) ;
 int strm_value_ary (scalar_t__) ;

__attribute__((used)) static int
pmatch_struct(strm_stream* strm, strm_state* state, node* pat, strm_value val, uint64_t* tbl, strm_int* len)
{
  node_nodes* pstr = (node_nodes*)pat;
  strm_array ary = strm_value_ary(val);
  struct strm_array* a = strm_ary_struct(ary);
  strm_value* headers;

  if (!a->headers) return STRM_NG;
  if (pstr->len > a->len) return STRM_NG;
  headers = strm_ary_ptr(a->headers);
  for (int i=0; i<pstr->len; i++) {
    node_pair* npair = (node_pair*)pstr->data[i];
    strm_string key;

    assert(npair->type == NODE_PAIR);
    key = node_to_sym(npair->key);
    for (int j=0; i<a->len; j++) {
      if (headers[j] == key) {
        if (pmatch(strm, state, npair->value, a->ptr[j]) == STRM_NG)
          return STRM_NG;
        if (tbl) {
          uint64_t n = 1<<(j%64);
          if (tbl[j/64] & n) (*len)--;
          tbl[j/64] |= n;
        }
        break;
      }
    }
  }
  return STRM_OK;
}
