
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_crypt_hdr; } ;
typedef TYPE_1__ arc_buf_hdr_t ;


 int ARC_SPACE_HDRS ;
 int arc_space_consume (int,int ) ;
 int bzero (int *,int) ;
 int hdr_full_cons (void*,void*,int) ;

__attribute__((used)) static int
hdr_full_crypt_cons(void *vbuf, void *unused, int kmflag)
{
 arc_buf_hdr_t *hdr = vbuf;

 hdr_full_cons(vbuf, unused, kmflag);
 bzero(&hdr->b_crypt_hdr, sizeof (hdr->b_crypt_hdr));
 arc_space_consume(sizeof (hdr->b_crypt_hdr), ARC_SPACE_HDRS);

 return (0);
}
