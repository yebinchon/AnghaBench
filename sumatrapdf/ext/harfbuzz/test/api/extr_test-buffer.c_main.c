
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BUFFER_EMPTY ;
 unsigned int BUFFER_NUM_TYPES ;
 void* GINT_TO_POINTER (unsigned int) ;
 char** buffer_names ;
 int fixture ;
 int hb_test_add (int ) ;
 int hb_test_add_fixture (int ,void*,int ) ;
 int hb_test_add_fixture_flavor (int ,void const*,char const*,int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_buffer_allocation ;
 int test_buffer_contents ;
 int test_buffer_empty ;
 int test_buffer_positions ;
 int test_buffer_properties ;
 int test_buffer_utf16_conversion ;
 int test_buffer_utf32_conversion ;
 int test_buffer_utf8_conversion ;
 int test_buffer_utf8_validity ;

int
main (int argc, char **argv)
{
  unsigned int i;

  hb_test_init (&argc, &argv);

  for (i = 0; i < BUFFER_NUM_TYPES; i++)
  {
    const void *buffer_type = GINT_TO_POINTER (i);
    const char *buffer_name = buffer_names[i];

    hb_test_add_fixture_flavor (fixture, buffer_type, buffer_name, test_buffer_properties);
    hb_test_add_fixture_flavor (fixture, buffer_type, buffer_name, test_buffer_contents);
    hb_test_add_fixture_flavor (fixture, buffer_type, buffer_name, test_buffer_positions);
  }

  hb_test_add_fixture (fixture, GINT_TO_POINTER (BUFFER_EMPTY), test_buffer_allocation);

  hb_test_add (test_buffer_utf8_conversion);
  hb_test_add (test_buffer_utf8_validity);
  hb_test_add (test_buffer_utf16_conversion);
  hb_test_add (test_buffer_utf32_conversion);
  hb_test_add (test_buffer_empty);

  return hb_test_run();
}
