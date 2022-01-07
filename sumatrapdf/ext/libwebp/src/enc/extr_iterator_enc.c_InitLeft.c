
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* y_left_; int* u_left_; int* v_left_; scalar_t__ y_; int left_derr_; int * top_derr_; scalar_t__* left_nz_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int memset (int*,int,int) ;

__attribute__((used)) static void InitLeft(VP8EncIterator* const it) {
  it->y_left_[-1] = it->u_left_[-1] = it->v_left_[-1] =
      (it->y_ > 0) ? 129 : 127;
  memset(it->y_left_, 129, 16);
  memset(it->u_left_, 129, 8);
  memset(it->v_left_, 129, 8);
  it->left_nz_[8] = 0;
  if (it->top_derr_ != ((void*)0)) {
    memset(&it->left_derr_, 0, sizeof(it->left_derr_));
  }
}
