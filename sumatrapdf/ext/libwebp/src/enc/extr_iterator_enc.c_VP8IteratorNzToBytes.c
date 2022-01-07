
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* nz_; int* top_nz_; int* left_nz_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int BIT (int const,int) ;

void VP8IteratorNzToBytes(VP8EncIterator* const it) {
  const int tnz = it->nz_[0], lnz = it->nz_[-1];
  int* const top_nz = it->top_nz_;
  int* const left_nz = it->left_nz_;


  top_nz[0] = BIT(tnz, 12);
  top_nz[1] = BIT(tnz, 13);
  top_nz[2] = BIT(tnz, 14);
  top_nz[3] = BIT(tnz, 15);

  top_nz[4] = BIT(tnz, 18);
  top_nz[5] = BIT(tnz, 19);

  top_nz[6] = BIT(tnz, 22);
  top_nz[7] = BIT(tnz, 23);

  top_nz[8] = BIT(tnz, 24);


  left_nz[0] = BIT(lnz, 3);
  left_nz[1] = BIT(lnz, 7);
  left_nz[2] = BIT(lnz, 11);
  left_nz[3] = BIT(lnz, 15);

  left_nz[4] = BIT(lnz, 17);
  left_nz[5] = BIT(lnz, 19);

  left_nz[6] = BIT(lnz, 21);
  left_nz[7] = BIT(lnz, 23);

}
