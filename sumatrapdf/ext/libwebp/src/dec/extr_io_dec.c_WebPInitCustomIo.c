
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WebPDecParams ;
struct TYPE_3__ {int * opaque; int teardown; int setup; int put; } ;
typedef TYPE_1__ VP8Io ;


 int CustomPut ;
 int CustomSetup ;
 int CustomTeardown ;

void WebPInitCustomIo(WebPDecParams* const params, VP8Io* const io) {
  io->put = CustomPut;
  io->setup = CustomSetup;
  io->teardown = CustomTeardown;
  io->opaque = params;
}
