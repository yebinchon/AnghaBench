
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int user; int ctx; int (* emit ) (int ,int ,int) ;} ;


 int stub1 (int ,int ,int) ;

__attribute__((used)) static inline void fmtputc(struct fmtbuf *out, int c)
{
 out->emit(out->ctx, out->user, c);
}
