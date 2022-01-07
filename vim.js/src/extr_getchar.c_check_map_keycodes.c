
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* m_keys; int* m_str; struct TYPE_6__* m_next; } ;
typedef TYPE_1__ mapblock_T ;
typedef int char_u ;
struct TYPE_7__ {TYPE_1__** b_maphash; TYPE_1__* b_first_abbr; struct TYPE_7__* b_next; } ;
typedef TYPE_2__ buf_T ;


 int FALSE ;
 int K_SPECIAL ;
 int NUL ;
 int add_termcap_entry (int*,int ) ;
 TYPE_1__* first_abbr ;
 TYPE_2__* firstbuf ;
 TYPE_1__** maphash ;
 int* sourcing_name ;
 int validate_maphash () ;

void
check_map_keycodes()
{
    mapblock_T *mp;
    char_u *p;
    int i;
    char_u buf[3];
    char_u *save_name;
    int abbr;
    int hash;




    validate_maphash();
    save_name = sourcing_name;
    sourcing_name = (char_u *)"mappings";
 for (abbr = 0; abbr <= 1; ++abbr)
     for (hash = 0; hash < 256; ++hash)
     {
  if (abbr)
  {
      if (hash)
   break;





   mp = first_abbr;
  }
  else
  {





   mp = maphash[hash];
  }
  for ( ; mp != ((void*)0); mp = mp->m_next)
  {
      for (i = 0; i <= 1; ++i)
      {
   if (i == 0)
       p = mp->m_keys;
   else
       p = mp->m_str;
   while (*p)
   {
       if (*p == K_SPECIAL)
       {
    ++p;
    if (*p < 128)
    {
        buf[0] = p[0];
        buf[1] = p[1];
        buf[2] = NUL;
        (void)add_termcap_entry(buf, FALSE);
    }
    ++p;
       }
       ++p;
   }
      }
  }
     }





    sourcing_name = save_name;
}
