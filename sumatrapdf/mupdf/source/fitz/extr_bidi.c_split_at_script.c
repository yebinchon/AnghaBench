
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int (* fz_bidi_fragment_fn ) (int const*,size_t,int,int,void*) ;


 int UCDN_SCRIPT_COMMON ;
 int UCDN_SCRIPT_INHERITED ;
 int stub1 (int const*,size_t,int,int,void*) ;
 int stub2 (int const*,size_t,int,int,void*) ;
 int ucdn_get_script (int const) ;

__attribute__((used)) static void
split_at_script(const uint32_t *fragment,
  size_t fragment_len,
  int level,
  void *arg,
  fz_bidi_fragment_fn *callback)
{
 int script = UCDN_SCRIPT_COMMON;
 size_t script_start, i;

 script_start = 0;
 for (i = 0; i < fragment_len; i++)
 {
  int s = ucdn_get_script(fragment[i]);
  if (s == UCDN_SCRIPT_COMMON || s == UCDN_SCRIPT_INHERITED)
  {

  }
  else if (s == script)
  {

  }
  else if (script == UCDN_SCRIPT_COMMON || script == UCDN_SCRIPT_INHERITED)
  {

   script = s;
  }
  else
  {

   (*callback)(&fragment[script_start], i - script_start, level, script, arg);
   script_start = i;
   script = s;
  }
 }
 if (script_start != fragment_len)
 {
  (*callback)(&fragment[script_start], fragment_len - script_start, level, script, arg);
 }
}
