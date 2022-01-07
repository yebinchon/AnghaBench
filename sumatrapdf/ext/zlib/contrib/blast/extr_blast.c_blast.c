
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {unsigned int left; unsigned char* in; int first; scalar_t__ next; int out; void* outhow; scalar_t__ (* outfun ) (void*,int ,scalar_t__) ;int env; scalar_t__ bitcnt; scalar_t__ bitbuf; void* inhow; int infun; } ;
typedef scalar_t__ (* blast_out ) (void*,int ,scalar_t__) ;
typedef int blast_in ;


 int decomp (struct state*) ;
 scalar_t__ setjmp (int ) ;
 scalar_t__ stub1 (void*,int ,scalar_t__) ;

int blast(blast_in infun, void *inhow, blast_out outfun, void *outhow,
          unsigned *left, unsigned char **in)
{
    struct state s;
    int err;


    s.infun = infun;
    s.inhow = inhow;
    if (left != ((void*)0) && *left) {
        s.left = *left;
        s.in = *in;
    }
    else
        s.left = 0;
    s.bitbuf = 0;
    s.bitcnt = 0;


    s.outfun = outfun;
    s.outhow = outhow;
    s.next = 0;
    s.first = 1;


    if (setjmp(s.env) != 0)
        err = 2;
    else
        err = decomp(&s);


    if (left != ((void*)0))
        *left = s.left;
    if (in != ((void*)0))
        *in = s.left ? s.in : ((void*)0);


    if (err != 1 && s.next && s.outfun(s.outhow, s.out, s.next) && err == 0)
        err = 1;
    return err;
}
