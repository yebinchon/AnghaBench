
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor {int slave; int ctx; } ;


 int PTYPE_TEXT ;
 int skynet_send (int ,int ,int ,int ,int ,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
report_harbor_down(struct harbor *h, int id) {
 char down[64];
 int n = sprintf(down, "D %d",id);

 skynet_send(h->ctx, 0, h->slave, PTYPE_TEXT, 0, down, n);
}
