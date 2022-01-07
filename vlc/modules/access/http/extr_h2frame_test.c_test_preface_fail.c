
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_parser {int dummy; } ;


 int CTX ;
 int assert (int) ;
 int ping () ;
 scalar_t__ test_raw_seq (struct vlc_h2_parser*,int ,int ,int *) ;
 int vlc_h2_frame_test_callbacks ;
 int vlc_h2_parse_destroy (struct vlc_h2_parser*) ;
 struct vlc_h2_parser* vlc_h2_parse_init (int ,int *) ;

__attribute__((used)) static void test_preface_fail(void)
{
    struct vlc_h2_parser *p;

    p = vlc_h2_parse_init(CTX, &vlc_h2_frame_test_callbacks);
    assert(p != ((void*)0));

    assert(test_raw_seq(p, ping(), ping(), ((void*)0)) == 0);

    vlc_h2_parse_destroy(p);
}
