
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 int CTX ;
 int assert (int) ;
 struct vlc_h2_frame* ping () ;
 struct vlc_h2_frame* response (int) ;
 scalar_t__ test_bad_seq (int ,struct vlc_h2_frame*,int *) ;

__attribute__((used)) static void test_header_block_fail(void)
{
    struct vlc_h2_frame *hf = response(1);
    struct vlc_h2_frame *pf = ping();


    assert(hf != ((void*)0) && hf->next != ((void*)0) && pf != ((void*)0));
    pf->next = hf->next;
    hf->next = pf;
    assert(test_bad_seq(CTX, hf, ((void*)0)) == 0);
}
