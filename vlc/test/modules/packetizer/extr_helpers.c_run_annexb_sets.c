
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct results_s {int dummy; } ;
typedef int ssize_t ;


 int check_set (int const*,int const*,struct results_s const*,size_t,int ,scalar_t__) ;
 int printf (char*) ;
 scalar_t__ startcode_FindAnnexB ;
 scalar_t__ startcode_FindAnnexB_Bits ;

__attribute__((used)) static int run_annexb_sets( const uint8_t *p_set, const uint8_t *p_end,
                            const struct results_s *p_results, size_t i_results,
                            ssize_t i_results_offset )
{
    int i_ret;

    printf("checking bits code:\n");
    i_ret = check_set( p_set, p_end, p_results, i_results, i_results_offset,
                       startcode_FindAnnexB_Bits );
    if( i_ret != 0 )
        return i_ret;


    if( startcode_FindAnnexB_Bits != startcode_FindAnnexB )
    {
        printf("checking asm:\n");
        i_ret = check_set( p_set, p_end, p_results, i_results, i_results_offset,
                           startcode_FindAnnexB );
        if( i_ret != 0 )
            return i_ret;
    }
    else printf("asm not built in, skipping test:\n");

    return 0;
}
