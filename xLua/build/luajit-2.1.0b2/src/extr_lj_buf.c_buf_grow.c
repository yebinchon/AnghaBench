
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int e; int p; int b; } ;
typedef TYPE_1__ SBuf ;
typedef scalar_t__ MSize ;


 scalar_t__ LJ_MIN_SBUF ;
 scalar_t__ lj_mem_realloc (int ,int ,scalar_t__,scalar_t__) ;
 int sbufB (TYPE_1__*) ;
 int sbufL (TYPE_1__*) ;
 scalar_t__ sbuflen (TYPE_1__*) ;
 scalar_t__ sbufsz (TYPE_1__*) ;
 int setmref (int ,char*) ;

__attribute__((used)) static void buf_grow(SBuf *sb, MSize sz)
{
  MSize osz = sbufsz(sb), len = sbuflen(sb), nsz = osz;
  char *b;
  if (nsz < LJ_MIN_SBUF) nsz = LJ_MIN_SBUF;
  while (nsz < sz) nsz += nsz;
  b = (char *)lj_mem_realloc(sbufL(sb), sbufB(sb), osz, nsz);
  setmref(sb->b, b);
  setmref(sb->p, b + len);
  setmref(sb->e, b + nsz);
}
