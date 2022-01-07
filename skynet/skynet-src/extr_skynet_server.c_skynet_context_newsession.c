
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int session_id; } ;



int
skynet_context_newsession(struct skynet_context *ctx) {

 int session = ++ctx->session_id;
 if (session <= 0) {
  ctx->session_id = 1;
  return 1;
 }
 return session;
}
