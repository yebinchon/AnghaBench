
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_buffer_t ;
typedef int gconstpointer ;
struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ fixture_t ;







 int GPOINTER_TO_INT (int ) ;
 int G_N_ELEMENTS (int *) ;
 int g_assert_not_reached () ;
 int hb_buffer_add (int *,int ,unsigned int) ;
 int hb_buffer_add_utf16 (int *,int *,int ,int,int ) ;
 int hb_buffer_add_utf32 (int *,int *,int ,int,int ) ;
 int hb_buffer_add_utf8 (int *,int *,int ,int,int ) ;
 int * hb_buffer_create () ;
 int * utf16 ;
 int * utf32 ;
 int * utf8 ;

__attribute__((used)) static void
fixture_init (fixture_t *fixture, gconstpointer user_data)
{
  hb_buffer_t *b;
  unsigned int i;

  b = fixture->buffer = hb_buffer_create ();

  switch (GPOINTER_TO_INT (user_data))
  {
    case 132:
      break;

    case 131:
      for (i = 1; i < G_N_ELEMENTS (utf32) - 1; i++)
 hb_buffer_add (b, utf32[i], i);
      break;

    case 129:
      hb_buffer_add_utf32 (b, utf32, G_N_ELEMENTS (utf32), 1, G_N_ELEMENTS (utf32) - 2);
      break;

    case 130:
      hb_buffer_add_utf16 (b, utf16, G_N_ELEMENTS (utf16), 1, G_N_ELEMENTS (utf16) - 2);
      break;

    case 128:
      hb_buffer_add_utf8 (b, utf8, G_N_ELEMENTS (utf8), 1, G_N_ELEMENTS (utf8) - 2);
      break;

    default:
      g_assert_not_reached ();
  }
}
