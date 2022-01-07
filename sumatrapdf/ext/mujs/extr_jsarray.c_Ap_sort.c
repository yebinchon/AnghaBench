
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct sortslot {int v; TYPE_1__* J; } ;
struct TYPE_17__ {int gcpause; } ;
typedef TYPE_1__ js_State ;


 int INT_MAX ;
 int js_copy (TYPE_1__*,int ) ;
 int js_delindex (TYPE_1__*,int ,int) ;
 int js_endtry (TYPE_1__*) ;
 int js_free (TYPE_1__*,struct sortslot*) ;
 int js_getlength (TYPE_1__*,int ) ;
 scalar_t__ js_hasindex (TYPE_1__*,int ,int) ;
 struct sortslot* js_malloc (TYPE_1__*,int) ;
 int js_pop (TYPE_1__*,int) ;
 int js_pushvalue (TYPE_1__*,int ) ;
 int js_rangeerror (TYPE_1__*,char*) ;
 int js_setindex (TYPE_1__*,int ,int) ;
 int js_throw (TYPE_1__*) ;
 int * js_tovalue (TYPE_1__*,int) ;
 scalar_t__ js_try (TYPE_1__*) ;
 int qsort (struct sortslot*,int,int,int ) ;
 int sortcmp ;

__attribute__((used)) static void Ap_sort(js_State *J)
{
 struct sortslot *array = ((void*)0);
 int i, n, len;

 len = js_getlength(J, 0);
 if (len <= 0) {
  js_copy(J, 0);
  return;
 }

 if (len >= INT_MAX / (int)sizeof(*array))
  js_rangeerror(J, "array is too large to sort");

 array = js_malloc(J, len * sizeof *array);





 ++J->gcpause;

 if (js_try(J)) {
  --J->gcpause;
  js_free(J, array);
  js_throw(J);
 }

 n = 0;
 for (i = 0; i < len; ++i) {
  if (js_hasindex(J, 0, i)) {
   array[n].v = *js_tovalue(J, -1);
   array[n].J = J;
   js_pop(J, 1);
   ++n;
  }
 }

 qsort(array, n, sizeof *array, sortcmp);

 for (i = 0; i < n; ++i) {
  js_pushvalue(J, array[i].v);
  js_setindex(J, 0, i);
 }
 for (i = n; i < len; ++i) {
  js_delindex(J, 0, i);
 }

 --J->gcpause;

 js_endtry(J);
 js_free(J, array);

 js_copy(J, 0);
}
