
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vp8l_wtype_t ;
typedef int vp8l_atype_t ;
typedef size_t uint64_t ;
typedef int const uint32_t ;
struct TYPE_4__ {int bits_; int used_; scalar_t__ cur_; scalar_t__ end_; size_t buf_; int error_; } ;
typedef TYPE_1__ VP8LBitWriter ;


 size_t MIN_EXTRA_SIZE ;
 int VP8LBitWriterResize (TYPE_1__* const,size_t) ;
 int VP8L_WRITER_BITS ;
 scalar_t__ VP8L_WRITER_BYTES ;
 int VP8L_WRITER_MAX_BITS ;
 scalar_t__ WSWAP (scalar_t__) ;
 int assert (int) ;

void VP8LPutBitsInternal(VP8LBitWriter* const bw, uint32_t bits, int n_bits) {
  assert(n_bits <= 32);

  assert(sizeof(vp8l_wtype_t) == 2);
  if (n_bits > 0) {
    vp8l_atype_t lbits = bw->bits_;
    int used = bw->used_;
    while (used >= VP8L_WRITER_BITS) {
      if (bw->cur_ + VP8L_WRITER_BYTES > bw->end_) {
        const uint64_t extra_size = (bw->end_ - bw->buf_) + MIN_EXTRA_SIZE;
        if (extra_size != (size_t)extra_size ||
            !VP8LBitWriterResize(bw, (size_t)extra_size)) {
          bw->cur_ = bw->buf_;
          bw->error_ = 1;
          return;
        }
      }
      *(vp8l_wtype_t*)bw->cur_ = (vp8l_wtype_t)WSWAP((vp8l_wtype_t)lbits);
      bw->cur_ += VP8L_WRITER_BYTES;
      lbits >>= VP8L_WRITER_BITS;
      used -= VP8L_WRITER_BITS;
    }
    bw->bits_ = lbits | ((vp8l_atype_t)bits << used);
    bw->used_ = used + n_bits;
  }
}
