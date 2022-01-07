
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS ;
 int cur_a_dc ;
 int tgl_authorized_dc (int ,int ) ;

int is_authorized (void) {
  return tgl_authorized_dc (TLS, cur_a_dc);
}
