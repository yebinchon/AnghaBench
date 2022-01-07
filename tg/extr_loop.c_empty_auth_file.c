
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ test_mode; } ;


 int TG_SERVER_1 ;
 int TG_SERVER_2 ;
 int TG_SERVER_3 ;
 int TG_SERVER_4 ;
 int TG_SERVER_5 ;
 int TG_SERVER_DEFAULT ;
 int TG_SERVER_TEST_1 ;
 int TG_SERVER_TEST_2 ;
 int TG_SERVER_TEST_3 ;
 int TG_SERVER_TEST_DEFAULT ;
 TYPE_1__* TLS ;
 int bl_do_dc_option (TYPE_1__*,int ,int,char*,int ,int ,int ,int) ;
 int bl_do_set_working_dc (TYPE_1__*,int ) ;
 int strlen (int ) ;

void empty_auth_file (void) {
  if (TLS->test_mode) {
    bl_do_dc_option (TLS, 0, 1, "", 0, TG_SERVER_TEST_1, strlen (TG_SERVER_TEST_1), 443);
    bl_do_dc_option (TLS, 0, 2, "", 0, TG_SERVER_TEST_2, strlen (TG_SERVER_TEST_2), 443);
    bl_do_dc_option (TLS, 0, 3, "", 0, TG_SERVER_TEST_3, strlen (TG_SERVER_TEST_3), 443);
    bl_do_set_working_dc (TLS, TG_SERVER_TEST_DEFAULT);
  } else {
    bl_do_dc_option (TLS, 0, 1, "", 0, TG_SERVER_1, strlen (TG_SERVER_1), 443);
    bl_do_dc_option (TLS, 0, 2, "", 0, TG_SERVER_2, strlen (TG_SERVER_2), 443);
    bl_do_dc_option (TLS, 0, 3, "", 0, TG_SERVER_3, strlen (TG_SERVER_3), 443);
    bl_do_dc_option (TLS, 0, 4, "", 0, TG_SERVER_4, strlen (TG_SERVER_4), 443);
    bl_do_dc_option (TLS, 0, 5, "", 0, TG_SERVER_5, strlen (TG_SERVER_5), 443);
    bl_do_set_working_dc (TLS, TG_SERVER_DEFAULT);
  }
}
