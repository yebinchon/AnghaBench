
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ canvas_height_; scalar_t__ canvas_width_; } ;
typedef TYPE_1__ WebPMux ;


 int assert (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void MuxInit(WebPMux* const mux) {
  assert(mux != ((void*)0));
  memset(mux, 0, sizeof(*mux));
  mux->canvas_width_ = 0;
  mux->canvas_height_ = 0;
}
